function dXode = dynamicsPEMA2(t,Xode)

global r p q l choise ;

t

if (choise==1)
    if (t<1)
        r=deg2rad(0);
    elseif (t<10)
        r=deg2rad(5);
    elseif (t<22)
        r=deg2rad(0);
    elseif (t<35)
        r=deg2rad(-5);
    elseif (t<45)
        r=deg2rad(0);
    elseif (t<55)
        r=deg2rad(10);
    elseif (t<65)
        r=deg2rad(0);
    elseif (t<75)
        r=deg2rad(-10);
    elseif (t<90)
        r=deg2rad(0);
    elseif (t<98)
        r=deg2rad(5);
    elseif (t<110)
        r=deg2rad(0);
    elseif (t<120)
        r=deg2rad(-5);
    elseif (t<140)
        r=deg2rad(0);
    end
    
    R=r;
    RT=r';
else
    R= r(t);
    RT=r(t);
end

%PINAKAS P POU UPOLOGISAME STHN MAIN KAI O Q POU THESAME EMEIS ME Q=QT>0,P=PT>0
P=p;
Q=q;

%% ARXIKOPOIHSH theta1-theta6 
theta1=-0.018 ;
theta2=0.015 ;
theta3=-0.062;
theta4=0.009 ;
theta5=0.021;
theta6=0.75;

%% PINAKES A kai B TOU SUSTHMATOS
A=[ 0 , 1 ; theta1 , theta2];
B=[0 ; 1];

gamma1=1.618;
gamma2=1.618;
gamma3=0.7;

%% ARXIKOPOIOUME TA APARAITHTA X,Xref,K1,K2,L1,TH3,TH4,TH5 GIA TIS DIAFORIKES


X1=Xode(1);
X2=Xode(2);
X=[X1;X2];
XT=X';

Xref1=Xode(3);
Xref2=Xode(4);
Xref=[Xref1;Xref2];

K1=Xode(5);
K2=Xode(6);
L1=Xode(7);
Th1=Xode(8);
Th2=Xode(9);
Th3=Xode(10);


%% K(t) L(t) Th(t)
Kest=[K1,K2];

Lest=L1;

THest=[Th1,Th2,Th3];

%% B kai LAMDA PINAKES SAN THN ERGASIA 1
LAMDA=theta6;

Th=[ theta3 ; theta4; theta5]/LAMDA;
ThT=Th';

F=[abs(X1).*X2 ; abs(X2).*X2 ; X1.^3];
FT=F';


%% PINAKES Aref kai Bref TOU MODELOU ANAFORAS
Aref=[0 , 1 ; -1 , -1.4];
ArefT=Aref';

Bref=[0;1];
BrefT=Bref';

BrefThref = B*LAMDA*(THest - ThT);


%% U Control Law
u= -Kest*X + Lest*R -THest*F;

%% DIAFORIKES

% System and Reference Model
x_dot=A*X + (B*LAMDA)*u + (B*LAMDA)*ThT*F;
x_ref_dot= Aref*Xref + Bref*R + BrefThref*F;

% Error
e=X-Xref;
eT=e';

% dK/dt , dL/dt ,dTh/dt 
K_dot=   gamma1*BrefT*P*e*XT*sign(l);
L_dot= - gamma2*BrefT*P*e*RT*sign(l);
Th_dot=  gamma3*BrefT*P*e*FT*sign(l);

% V_dot=-eT*Q*e;
% if (V_dot<=0)
%     fprintf("Lyapunov dV/dt < 0 ");
% else
%      fprintf("Lyapunov dV/dt > 0 ");
%      return;
% end


%% VECTOR ME TIS  DIAFORIKES POU EPISTREFW MAZI ME TO u
dXode =zeros(size(Xode));

dXode(1) = x_dot(1);
dXode(2) = x_dot(2);
dXode(3) = x_ref_dot(1);
dXode(4) = x_ref_dot(2);
dXode(5) = K_dot(1);
dXode(6) = K_dot(2);
dXode(7) = L_dot(1);
dXode(8) = Th_dot(1);
dXode(9) = Th_dot(2);
dXode(10)= Th_dot(3);
dXode(11) = u(1);
dXode(12) = R;

end
