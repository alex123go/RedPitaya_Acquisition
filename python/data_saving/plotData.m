fs = 125e6;
data = readWaveformFromRedPitaya('data_test_0x0800_0000_full_acq.bin');



% plot(data)


% N = length(data);
% f = (-N/2:N/2-1)/N*fs;
% S = fftshift(fft(data, N));
% plot(f,10*log10(abs(S)))
