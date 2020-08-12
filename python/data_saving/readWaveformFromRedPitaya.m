function data = readWaveformFromRedPitaya(fileName,precision)

if nargin < 2
    precision = 'int16';
end
max_bytes = (512-128)*1024*1024; % 384MB of data max 
f = fopen(fileName, 'rb');
data = fread(f, max_bytes, precision, 'l');
fclose(f);
end