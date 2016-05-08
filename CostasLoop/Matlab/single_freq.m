% ���ɵ�һƵ�ʺͶ�����ЧӦ�������ļ�
% ����Ƶ���� 16MHz��
% 
% ������·�źš�
% 1. ��һƵ���źţ�2MHz�����ź�
% 2. ��һƵ���źŵ��Ӷ�����Ƶ��ЧӦ����
%    ����ʱ�䣬ƽ����Ϊ�ĸ�ʱ��Σ�ÿһ��ʱ�����5K��������
%    �����Ƶ���� 2 MHz���˺��ÿһ���׶ε�Ƶ�����ӷֱ��� +8K, +24K, -16K
%
% ��·�ź����ɵĲ��������ݰ��� 8bit ���������������
% ../data/single_freq.txt
% ../data/single_freq_doppler.txt
% �ļ��С�
%
%
ps  = 1*10^6;       %������Ϊ1MHz
N   = 5000; 
Len = N * 4;
Fs  = 16*10^6;      %��������Ϊ16MHz
fc  = 2*10^6;   %�ز�Ƶ��Ϊ2MHz

% �źţ������� 1Mbps
Rb  = 1e6;
% �ź���Ԫ���������ɲ����������������ʺ��ź����ʾ�����
x_n = Len / (Fs/Rb);
x = m_seq([ 0 0 1 0 1] );
% 0, 1�� ת��Ϊ 1, -1��
x = x * -2 + 1;
x = repmat(x, 1, ceil( x_n / length(x)));
x = x(1:x_n);
n_T = [-2 2];
rate = Fs/Rb;
T = 1;
a = 0.8;
shape_b = rcosfir(a, n_T, rate, T);
x = filter(shape_b, 1, x);

% �����ز��ź�
t   = 0:1/Fs:(Len-1)/Fs;
single_freq_out = cos(2 * pi * fc .* t);

% �����źŵĵ��ƺ��Ƶ��
signal_demod_out = single_freq_out .* (rectpulse(x, Fs/Rb));

% �� delta_phi_1 Ϊ����ÿһ�����������ӵ���λֵ�� 1000/fc rad
delta_phi_0 = zeros(1, N);
% ����Ƶ���� 16Mhz��������Nʱ��ε�Ƶ������Ϊ (100 * 2 /fc) / (1/16MHz) = 1600Hz
delta_phi_1 = linspace(1, N, N) * 100 * 2 * 2 * pi / fc;
% ����Ƶ���� 16Mhz��������Nʱ��ε�Ƶ������Ϊ (150 * 2 /fc) / (1/16MHz) = 2400Hz
delta_phi_2 = linspace(1, N, N) * 150 * 2 * 2 * pi / fc;
% ����Ƶ���� 16Mhz��������Nʱ��ε�Ƶ������Ϊ (-100 * 2 /fc) / (1/16MHz) = -1600Hz
delta_phi_3 = linspace(N, 1, N) * 100 * 2 * 2 * pi / fc;
delta_phi = [ delta_phi_0, delta_phi_1, delta_phi_2, delta_phi_3 ];
% ͨ�������ز�Ƶ�ʣ�4��ʱ��ε�Ƶ�ʷֱ��� 2M, 2.0016M, 2.0024M, 1.9984M
single_freq_doppler = cos(2 * pi * fc .* t + delta_phi);



%8����������Ƶ�����������ݣ���д���ⲿ�ı��ļ���
Q   = 8;
f_s = single_freq_out / max(abs(single_freq_out));%��һ������
Q_s = round(f_s * (2 ^ (Q - 1) - 1));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�½��ı��ļ�ǰ�����뽨���ļ���ŵ�Ŀ¼�ļ��У����������ʾ��Ϣ:
%??? Error using ==> fprintf
%Invalid file identifier
%�������Ҫ�޸�������䣬�Ըı��ļ������ļ����·��
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
f_s = single_freq_doppler /max(abs(single_freq_doppler));%��һ������
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

% ������Ԫ��Ϣ���ƺ�������ļ�
%8����������Ƶ�����������ݣ���д���ⲿ�ı��ļ���
Q   = 8;
f_s = signal_demod_out / max(abs(signal_demod_out));%��һ������
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
