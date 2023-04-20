load("./data/project_data.mat")
% plot(unfilteredNeuralData(:,1));
% 
Neural_Data1 = unfilteredNeuralData(:,1);
Neural_Data2 = unfilteredNeuralData(:,2);
Neural_Data3 = unfilteredNeuralData(:,3);
Neural_Data4 = unfilteredNeuralData(:,4);
Neural_Data5 = unfilteredNeuralData(:,5);
Neural_Data6 = unfilteredNeuralData(:,6);

x = Neural_Data6;

% produce a spectrogram for each channel
% then play around with parameters, and see what happens
% change windows overlap, change points etc, and see how the spectrogram.
 
fs = 30e3;
t = 0:1/fs:2;
% x1 = vco(sin(2*pi*t),[0.1 0.4]*fs,fs);

figure(1)
x1 = Neural_Data1;
stft(x1,fs,Window=kaiser(256,5),OverlapLength=220,FFTLength=512)

figure(2)
x2 = Neural_Data5;
stft(x2,fs,Window=kaiser(256,5),OverlapLength=220,FFTLength=512)