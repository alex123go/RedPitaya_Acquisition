clear;clc;
fs = 125e6;
% TO READ 16 BITS DATA:
data1 = readWaveformFromRedPitaya('IN1_data_test.bin');
data2 = readWaveformFromRedPitaya('IN2_data_test.bin');

% TO READ 32 BITS DATA:
% data = readWaveformFromRedPitaya('counter.bin','uint32');

%%
figure()
plot(data1)
hold on
plot(data2)
hold off
%%
figure()
plot(data)



% N = length(data);
% f = (-N/2:N/2-1)/N*fs;
% S = fftshift(fft(data, N));
% plot(f,10*log10(abs(S)))

%%
% mod((data2(1) - data1(end)),2^32)/fs