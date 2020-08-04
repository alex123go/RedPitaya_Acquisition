function data = readWaveformFromRedPitaya(fileName)
max_bytes = (512-128)*1024*1024; % 384MB of data max 
f = fopen(fileName, 'rb');
data = fread(f, max_bytes, 'int16', 'l');
fclose(f);
end