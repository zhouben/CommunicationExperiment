% 生成单一频率和多普勒效应的数据文件
% 抽样频率是 16MHz。
% 
% 生成两路信号。
% 1. 单一频率信号，2MHz余弦信号
% 2. 单一频率信号叠加多普勒频率效应。即
%    按照时间，平均分为四个时间段，每一个时间段有5K个抽样点
%    最初的频率是 2 MHz，此后的每一个阶段的频率增加分别是 +8K, +24K, -16K
%
% 两路信号生成的采样点数据按照 8bit 进行量化。输出到
% ../data/single_freq.txt
% ../data/single_freq_doppler.txt
% 文件中。
%
%
ps  = 1*10^6;       %码速率为1MHz
N   = 5000; 
Len = N * 4;
Fs  = 16*10^6;      %采样速率为16MHz
fc  = 2*10^6;   %载波频率为2MHz

% 信号，符号率 1Mbps
Rb  = 1e6;
% 信号码元的总数，由采样点总数，采样率和信号速率决定。
x_n = Len / (Fs/Rb);
x = m_seq([ 0 0 1 0 1] );
% 0, 1码 转化为 1, -1码
x = x * -2 + 1;
x = repmat(x, 1, ceil( x_n / length(x)));
x = x(1:x_n);
n_T = [-2 2];
rate = Fs/Rb;
T = 1;
a = 0.8;
shape_b = rcosfir(a, n_T, rate, T);
x = filter(shape_b, 1, x);

% 生成载波信号
t   = 0:1/Fs:(Len-1)/Fs;
single_freq_out = cos(2 * pi * fc .* t);

% 带有信号的调制后的频率
signal_demod_out = single_freq_out .* (rectpulse(x, Fs/Rb));

% 以 delta_phi_1 为例，每一个采样点增加的相位值是 1000/fc rad
delta_phi_0 = zeros(1, N);
% 采样频率是 16Mhz，因此这个N时间段的频率增量为 (100 * 2 /fc) / (1/16MHz) = 1600Hz
delta_phi_1 = linspace(1, N, N) * 100 * 2 * 2 * pi / fc;
% 采样频率是 16Mhz，因此这个N时间段的频率增量为 (150 * 2 /fc) / (1/16MHz) = 2400Hz
delta_phi_2 = linspace(1, N, N) * 150 * 2 * 2 * pi / fc;
% 采样频率是 16Mhz，因此这个N时间段的频率增量为 (-100 * 2 /fc) / (1/16MHz) = -1600Hz
delta_phi_3 = linspace(N, 1, N) * 100 * 2 * 2 * pi / fc;
delta_phi = [ delta_phi_0, delta_phi_1, delta_phi_2, delta_phi_3 ];
% 通过叠加载波频率，4个时间段的频率分别是 2M, 2.0016M, 2.0024M, 1.9984M
single_freq_doppler = cos(2 * pi * fc .* t + delta_phi);



%8比特量化中频采样仿真数据，并写入外部文本文件中
Q   = 8;
f_s = single_freq_out / max(abs(single_freq_out));%归一化处理
Q_s = round(f_s * (2 ^ (Q - 1) - 1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%新建文本文件前，必须建好文件存放的目录文件夹，否则出现提示信息:
%??? Error using ==> fprintf
%Invalid file identifier
%请根据需要修改下面语句，以改变文件名及文件存放路径
fid=fopen('../data/single_freq_out.txt','w');
for k = 1:length(Q_s)
    B_s = dec2bin(Q_s(k)+(Q_s(k)<0)*2^Q,Q);
    k;
    for j = 1:Q
       if B_s(j) == '1'
           tb = 1;
       else
           tb = 0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

% create file for doppler signal
Q=8;
f_s = single_freq_doppler /max(abs(single_freq_doppler));%归一化处理
Q_s = round(f_s*(2^(Q-1)-1));
fid = fopen('../data/single_freq_doppler.txt','w');
for k = 1:length(Q_s)
    B_s = dec2bin(Q_s(k)+(Q_s(k)<0)*2^Q,Q);
    k;
    for j = 1:Q
       if B_s(j) == '1'
           tb = 1;
       else
           tb = 0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
%fprintf(fid,';'); 
fclose(fid);

% 生成码元信息调制后的数据文件
%8比特量化中频采样仿真数据，并写入外部文本文件中
Q   = 8;
f_s = signal_demod_out / max(abs(signal_demod_out));%归一化处理
Q_s = round(f_s * (2 ^ (Q - 1) - 1));
fid=fopen('../data/signal_demod_out.txt','w');
for k = 1:length(Q_s)
    B_s = dec2bin(Q_s(k)+(Q_s(k)<0)*2^Q,Q);
    k;
    for j = 1:Q
       if B_s(j) == '1'
           tb = 1;
       else
           tb = 0;
       end
       fprintf(fid,'%d',tb);  
    end
    fprintf(fid,'\r\n');
end
fclose(fid);
