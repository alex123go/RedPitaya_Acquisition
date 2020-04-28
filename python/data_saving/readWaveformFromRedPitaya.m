function data = readWaveformFromRedPitaya(fileName)
max_bytes = 32*1024*1024; % 32MB of data max 
f = fopen(fileName, 'rb');
data = fread(f, max_bytes, 'int16', 'l');
fclose(f);
end