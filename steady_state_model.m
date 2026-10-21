%%parameter
T=1;
c=1;
K=1;
T_plant=5;
c_plant=5;
K_plant=5;
%%matrix
A=[0 1;-1/T^2 -2*c/T];
B=[0;K/T^2];
C=[1 0];
D=0; 
P_ss=ss(A,B,C,D);
[A,B,C,D]=ssdata(P_ss);

P=tf(P_ss);
P_ss=ss(P);

pole(P_ss)

%%
A_plant=[0 1;-1/T_plant^2 -2*c_plant/T_plant];
B_plant=[0;K_plant/T_plant^2];
C_plant=[1 0];
D_plant=0; 
P_ss_plant=ss(A_plant,B_plant,C_plant,D_plant);
[A_plant,B_plant,C_plant,D_plant]=ssdata(P_ss_plant);

P_plant=tf(P_ss_plant);
P_ss_plant=ss(P_ss_plant);

pole(P_ss_plant)

[Ap,Bp,Cp,Dp]=ssdata(P_ss_plant);
obsPoles=[-15;-16];
Lobs=place(Ap',Cp',obsPoles)';
