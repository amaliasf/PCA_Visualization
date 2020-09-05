%import sample1
A1= csvread('sam1_eeg.csv',0,0); 
Z1=transpose(A1);
S01=Z1(:);

%import sample2
A2= csvread('sam2_eeg.csv',0,0);
Z2=transpose(A2);
S02=Z2(:);

%import sample3
A3= csvread('sam3_eeg.csv',0,0);
Z3=transpose(A3);
S03=Z3(:);

%import sample4
A4= csvread('sam4_eeg.csv',0,0);
Z4=transpose(A4);
S04=Z4(:);

%import sample5
A5= csvread('sam5_eeg.csv',0,0);
Z5=transpose(A5);
S05=Z5(:);

%import sample6
A6= csvread('sam6_eeg.csv',0,0);
Z6=transpose(A6);
S06=Z6(:);

%import sample7
A7= csvread('sam7_eeg.csv',0,0);
Z7=transpose(A7);
S07=Z7(:);

%import sample8
A8= csvread('sam8_eeg.csv',0,0);
Z8=transpose(A8);
S08=Z8(:);

%import sample9
A9= csvread('sam9_eeg.csv',0,0);
Z9=transpose(A9);
S09=Z9(:);

%import sample10
A10= csvread('sam10_eeg.csv',0,0);
Z10=transpose(A10);
S10=Z10(:);

%import sample11
A11= csvread('sam11_eeg.csv',0,0);
Z11=transpose(A11);
S11=Z11(:);

%import sample12
A12= csvread('sam12_eeg.csv',0,0);
Z12=transpose(A12);
S12=Z12(:);

%import sample13
A13= csvread('sam13_eeg.csv',0,0);
Z13=transpose(A13);
S13=Z13(:);

%import sample14
A14= csvread('sam14_eeg.csv',0,0);
Z14=transpose(A8);
S14=Z14(:);

%import sample15
A15= csvread('sam15_eeg.csv',0,0);
Z15=transpose(A15);
S15=Z15(:);

%import sample16
A16= csvread('sam16_eeg.csv',0,0);
Z16=transpose(A16);
S16=Z16(:);

%import sample17
A17= csvread('sam17_eeg.csv',0,0);
Z17=transpose(A17);
S17=Z17(:);

%import sample18
A18= csvread('sam18_eeg.csv',0,0);
Z18=transpose(A18);
S18=Z18(:);

%import sample19
A19= csvread('sam19_eeg.csv',0,0);
Z19=transpose(A19);
S19=Z19(:);

%import sample20
A20= csvread('sam20_eeg.csv',0,0);
Z20=transpose(A20);
S20=Z20(:);

%import sample21
A21= csvread('sam21_eeg.csv',0,0);
Z21=transpose(A21);
S21=Z21(:);

%import sample22
A22= csvread('sam22_eeg.csv',0,0);
Z22=transpose(A22);
S22=Z22(:);

%concat
LPP_bin2= [S01 S02 S03 S04 S05 S06 S07 S08 S09 S10 S11 S12 S13 S14 S15 S16 S17 S18 S19 S20 S21 S22];

%PCA implementation
[coeff,score,latent,tsquared,explained,mu] = pca(LPP_bin2');

figure;
%figuring the blue circle that presents the healthy profile group
plot3(score(1:11,1),score(1:11,2),score(1:11,3),'bo');
zlabel('Principal direction #3');
hold on
%figuring the red circle that presents the unhealthy profile group
plot3(score(12:end,1),score(12:end,2),score(12:end,3),'ro');
hold on

zlabel('Principal direction #3');
title(sprintf('LPP - Unhealthy Food Stimuli'));
xlabel('Principal direction #1');
ylabel('Principal direction #2');
grid on;
set(gca,'DataAspectRatio',[1 1 1]);

