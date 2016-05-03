% PLL低通滤波器设计
% 用于设计锁相环电路中混频器后面的低通滤波器。考虑到多普勒频移最大24KHz。
% 增加一些余量，设计过渡带为 0.1MHz ~ 0.5MHz。
% 
% 采样率 16MHz
%
fs  = 16*10^6;          % 采样速率为16MHz
fc  = [ 0.2121e6 1e6];   % 过渡带
mag = [ 1 0];           % 窗函数的理想滤波器的幅度
dev = [0.1 0.02];      % 纹波
[n, wn, beta, ftype ] = kaiserord(fc, mag, dev, fs);    % 获得凯塞窗参数
fpm = [ 0, fc(1) * 2 / fs, fc(2) * 2 / fs, 1];
magpm = [ 1 1 0 0];

% 设计最优滤波器
h_pm = firpm(n, fpm, magpm);

% 进行10bit量化
h_pm10 = round(h_pm / max(abs(h_pm)) * (2^9 - 1));

freqz(h_pm);

%求系数绝对值之和，以此估计滤波后的有效数据位宽
s1=sum(abs(h_pm10))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf
%Invalid file identifier
%请根据需要修改下面语句，以改变文件名及文件存放路径
fid=fopen('../data/locklpf.coe','w');
fprintf(fid,'radix = 10;\r\n');
fprintf(fid,'coefdata=\r\n');
fprintf(fid,'%8d\r\n',h_pm10);fprintf(fid,';');
fclose(fid);




