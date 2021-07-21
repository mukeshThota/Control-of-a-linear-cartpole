Mp=1;
Mc=5;
L=0.19443;
g=10;
A=[0,1,0,0;0,0,g*Mp/Mc,0;0,0,0,1;0,0,g*(Mp+Mc)/Mc,0];
B=[0;1/Mc;0;1/(L*Mc)];
y0=[0;0;3*pi/2;0];
%pole = [-2;-4;-8;-11];          %pole fixing method
%k= place(A,B,pole);
Q = [200,0,0,0;0,180,0,0;0,0,500,0;0,0,0,100];
R = [0.01];                       
k= lqr(A,B,Q,R);           %Lqr method


