% PLL��ͨ�˲������
% ����������໷��·�л�Ƶ������ĵ�ͨ�˲��������ǵ�������Ƶ�����24KHz��
% ����һЩ��������ƹ��ɴ�Ϊ 0.1MHz ~ 0.5MHz��
% 
% ������ 16MHz
%
fs  = 16*10^6;          % ��������Ϊ16MHz
fc  = [ 0.2121e6 1e6];   % ���ɴ�
mag = [ 1 0];           % �������������˲����ķ���
dev = [0.1 0.02];      % �Ʋ�
[n, wn, beta, ftype ] = kaiserord(fc, mag, dev, fs);    % ��ÿ���������
fpm = [ 0, fc(1) * 2 / fs, fc(2) * 2 / fs, 1];
magpm = [ 1 1 0 0];

% ��������˲���
h_pm = firpm(n, fpm, magpm);

% ����10bit����
h_pm10 = round(h_pm / max(abs(h_pm)) * (2^9 - 1));

freqz(h_pm);

%��ϵ������ֵ֮�ͣ��Դ˹����˲������Ч����λ��
s1=sum(abs(h_pm10))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf
%Invalid file identifier
%�������Ҫ�޸�������䣬�Ըı��ļ������ļ����·��
fid=fopen('../data/locklpf.coe','w');
fprintf(fid,'radix = 10;\r\n');
fprintf(fid,'coefdata=\r\n');
fprintf(fid,'%8d\r\n',h_pm10);fprintf(fid,';');
fclose(fid);




