clc;
clear;

global r p q l choise;

%**************************************************************************
%%                                                       THEORHTIKH ANALYSH
%**************************************************************************




%% ARXIKOPOIHSH
tstart =0;
tfinal =150;

tspan=[tstart  tfinal];

theta = [ -0.018 , 0.015 , -0.062, 0.009 ,0.021 ,0.75];

%% ESTW OTI X1(0)=0.0001 , X2(0)=0
x0= 0;
state0=[0.9258 ;0];

%% FUNCTION HANDLES GIA NA VRW THN DIAFORIKH
f=@(t,state)dynamics(t,state);
d=@(t,state)eventsfun(state,x0);


%% DIAFORIKH EXISWSH SUSTHMATOS
options=odeset('Events',d,'RelTol',10^-10,'AbsTol',10^-11);
[t,state]=ode45(f,tspan,state0,options);

figure(5)
plot(t,state(:,1),'black','LineWidth',1);
title('F - t GIA ARXIKES TIMES = 0.9258');
ylabel('$F$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',12);


%% PLOT THS P SUNARTHSH TOU XRONOU t

figure(6)
plot(t,state(:,2),'black','LineWidth',1);
title('P - t  GIA ARXIKES TIMES =0.9258');
ylabel('$P$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',12);



%% ESTW OTI X1(0)=0.0001 , X2(0)=0
x0= 0;
state0=[0.0001 ;0];

%% FUNCTION HANDLES GIA NA VRW THN DIAFORIKH
f=@(t,state)dynamics(t,state);
d=@(t,state)eventsfun(state,x0);


%% DIAFORIKH EXISWSH SUSTHMATOS
options=odeset('Events',d,'RelTol',10^-10,'AbsTol',10^-11);
[t,state]=ode45(f,tspan,state0,options);


%% PLOT THS F SUNARTHSH TOU XRONOU t 

figure(1)
plot(t,state(:,1),'blue','LineWidth',1);
title('F - t GIA ARXIKES TIMES < 0.9258');
ylabel('$F$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',12);


%% PLOT THS P SUNARTHSH TOU XRONOU t

figure(2)
plot(t,state(:,2),'blue','LineWidth',1);
title('P - t  GIA ARXIKES TIMES < 0.9258');
ylabel('$P$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',12);



%% ERWTHMA A)

%EPANALHPSH ME ARXIKES TIMES GIA TO DIASTHMA [0.03 , 0.093] OPOU META APO
%TO 0.09283 TO SUSTHMA EINAI ASTAHES KAI FEUGEI APO TON ORIAKO KUKLO

length= size(state(:,1),1);
c=2;

% %% GIA DIAFORES ARXIKES TIMES !!!
% 
% for (i=  - 0.94:0.01: -0.01)
% %% ESTW OTI X1(0)=i , X2(0)=0
% x0= 0;
% state0=[i ;0];
% 
% 
% %% FUNCTION HANDLES GIA NA VRW THN DIAFORIKH
% f=@(t,state)dynamics(t,state);
% d=@(t,state)eventsfun(state,x0);
% 
% 
% options=odeset('Events',d,'RelTol',10^-10,'AbsTol',10^-11);
% [t,state]=ode45(f,tspan,state0,options);
% 
% Ft(:,c) = state(1:1:length,1);
% Pt(:,c) = state(1:1:length,2);
% 
% DFt = gradient(Ft(:,c));
% DPt = gradient(Pt(:,c));
% U(:,c) = DPt;
% V(:,c) = DFt;
% 
% i
% c=c+1
% 
% end
% 
% for (i= -0.01:0.001: -0.003)
% %% ESTW OTI X1(0)=i , X2(0)=0
% x0= 0;
% state0=[i ;0];
% 
% 
% %% FUNCTION HANDLES GIA NA VRW THN DIAFORIKH
% f=@(t,state)dynamics(t,state);
% d=@(t,state)eventsfun(state,x0);
% 
% 
% options=odeset('Events',d,'RelTol',10^-10,'AbsTol',10^-11);
% [t,state]=ode45(f,tspan,state0,options);
% 
% Ft(:,c) = state(1:1:length,1);
% Pt(:,c) = state(1:1:length,2);
% 
% DFt = gradient(Ft(:,c));
% DPt = gradient(Pt(:,c));
% U(:,c) = DPt;
% V(:,c) = DFt;
% 
% i
% c=c+1
% 
% end
% for (i= 0.003:0.001: 0.01)
% %% ESTW OTI X1(0)=i , X2(0)=0
% x0= 0;
% state0=[i ;0];
% 
% %% VASIKA CALLS SUNARTHSEWN GIA NA VRW THN DIAFORIKH
% f=@(t,state)dynamics(t,state);
% d=@(t,state)eventsfun(state,x0);
% 
% 
% options=odeset('Events',d,'RelTol',10^-10,'AbsTol',10^-11);
% [t,state]=ode45(f,tspan,state0,options);
% 
% Ft(:,c) = state(1:1:length,1);
% Pt(:,c) = state(1:1:length,2);
% 
% DFt = gradient(Ft(:,c));
% DPt = gradient(Pt(:,c));
% U(:,c) = DPt;
% V(:,c) = DFt;
% 
% i
% c=c+1
% 
% end
% 
% for (i=  0.01:0.01: 0.94)
% %% ESTW OTI X1(0)=i , X2(0)=0
% x0= 0;
% state0=[i ;0];
% 
% %% FUNCTION HANDLES GIA NA VRW THN DIAFORIKH
% f=@(t,state)dynamics(t,state);
% d=@(t,state)eventsfun(state,x0);
% 
% 
% options=odeset('Events',d,'RelTol',10^-10,'AbsTol',10^-11);
% [t,state]=ode45(f,tspan,state0,options);
% 
% Ft(:,c) = state(1:1:length,1);
% Pt(:,c) = state(1:1:length,2);
% 
% DFt = gradient(Ft(:,c));
% DPt = gradient(Pt(:,c));
% U(:,c) = DPt;
% V(:,c) = DFt;
% 
% i
% c=c+1
% 
% end
% 
% 
% %% PLOT THS F SUNARTHSH TOU XRONOU t
% 
% figure(3)
% plot(t,state(:,1),'red','LineWidth',1);
% title('F - t GIA ARXIKES TIMES > 0.9258');
% ylabel('$F$','Interpreter','latex','fontsize',20);
% xlabel('$t$','Interpreter','latex','fontsize',12);
% 
% %% PLOT THS P SUNARTHSH TOU XRONOU t
% figure(4)
% plot(t,state(:,2),'red','LineWidth',1);
% title('P - t  GIA ARXIKES TIMES > 0.9258');
% ylabel('$P$','Interpreter','latex','fontsize',20);
% xlabel('$t$','Interpreter','latex','fontsize',12);
% 
% 
% %% ERWTHMA B)
% 
% %% PLOT P-F ORIAKOI KUKLOI GIA DIAFORES ARXIKOPOIHSEIS
% 
% for(i=1:1:c-1)
%     
% figure(8)
% hold on
% quiver(Ft(:,i),Pt(:,i),V(:,i),U(:,i),0.5);
% title('P - F');
% ylabel('$P$','Interpreter','latex','fontsize',20);
% xlabel('$F$','Interpreter','latex','fontsize',20);
% axis equal
% hold off
% end
% 

%% Indirect Lyapunov Method

syms x1 x2;

fx0=@(x1,x2) [ 0 , 1 ; theta(1)* 1 + theta(3)*sign(x1)*x2 + 3*theta(5)*x1^2 , theta(2) + theta(4)*sign(x2)*x2 + theta(3)*abs(x1) + theta(4)*abs(x2)];

A=fx0(0,0);

I=[1, 0; 0, 1];

syms lammda;

idiotimes_exiswsh = det(lammda*I-A)

L=solve(idiotimes_exiswsh,lammda);

if ( real(L(1)) < 0 && real(L(2)) < 0)
        fprintf("1)   IDIOTHMH TOU SUSTHMATOS l1 =\n");
        fprintf("\n");
        pretty(L(1))
        fprintf("2)   IDIOTHMH TOU SUSTHMATOS l2 =\n");
        fprintf("\n");
        pretty(L(2))
        fprintf("OPOTE O PINAKAS A EXEI OLES TIS IDIOTIMES TOU STO ARISTERO \n");
        fprintf("MIGADIKO HMIEPIPEDO OPOTE fx[0] = GENIKA ASYMPTWTIKA EUSTATHEIS\n");
end

if ( real(L(1))> 0 || real(L(2)) > 0)
        fprintf("1)   IDIOTHMH TOU SUSTHMATOS l1 =\n");
        fprintf("\n");
        pretty(L(1))
        fprintf("2)   IDIOTHMH TOU SUSTHMATOS l2 =\n");
        fprintf("\n");
        pretty(L(2))
        fprintf("OPOTE O PINAKAS A EXEI MIA APO TIS IDIOTIMES TOU STO DEXI \n");
        fprintf("MIGADIKO HMIEPIPEDO OPOTE fx[0] =  ASYMPTWTIKA ASTATHEIS\n");
end


if ( real(L(1))== 0 || real(L(2)) == 0)
        fprintf("1)   IDIOTHMH TOU SUSTHMATOS l1 =\n");
        fprintf("\n");
        pretty(L(1))
        fprintf("2)   IDIOTHMH TOU SUSTHMATOS l2 =\n");
        fprintf("\n");
        pretty(L(2))
        fprintf("OPOTE O PINAKAS A EXEI MIA APO TIS IDIOTIMES TOU ISH ME MHDEN \n");
        fprintf("OPOTE  DEN MPORW NA GNWRIZW GIA THN EUSTATHEIA TOU SUSTHMATOS\n");
end









%**************************************************************************
%%                                                            PROSOMOIWSEIS
%**************************************************************************







%% UPOLOGIZW TA IDANIKA K* , L* , TH*

L_star_1=1/theta(6);
K_star_1=(theta(1) + 1)/theta(6);
K_star_2=(theta(2) + 1.4)/theta(6);
Th_star_3=theta(3)/theta(6);
Th_star_4=theta(4)/theta(6);
Th_star_5=theta(5)/theta(6);


%% ELENXOUME AN L* > 0 TOTE l=1 KAI AN  L* < 0 l=-1
%% DIOTI G^-1 =L*sgn(l)

if(L_star_1>0)
   l=1;
elseif(L_star_1<0)
   l=-1;
end

%% Initialize The values of K(0),L(0),Th(0).
X01 =  0.00001;
X02 =  0.00001;
X0ref1 =  0.00001;
X0ref2 =  0.00001;
L01 =   0;
K01 =   0;
K02 =   0;
TH03 =  0;
TH04 =  0;
TH05 =  0;
U0 =0;
R0 =0;

xinit=[X01 ; X02 ; X0ref1 ;X0ref2 ; K01 ; K02; L01; TH03 ; TH04 ; TH05; U0 ;R0];


%% ERWTHMA D)


%% UPOLOGISMOS TOU PINAKA P MESO TOU Q SUMFWNA ME THN EXISWSH P*Aref + ArefT*P = -Q
syms p11 p12 p22;

%%%%%%%%%%%
Q=[100,100;100,100];
%%%%%%%%%%%

Aref=[0 , 1 ; -1 , -1.4];
ArefT=Aref';

P=[p11 , p12 ; p12 , p22]; %p1p2-p3^2>0 p1>0


eqn = P*Aref + ArefT*P == -Q;

[O,N] = equationsToMatrix([eqn] , [p11 p12 p22 ]);
H=linsolve(O,N);

P=[ H(1) ,  H(2) ;  H(2) ,  H(3)];

p=P
q=Q;

choise=1;

%% EPILUSH TWN DIAFORIKWN EXISWSEWN
x0=0;
%Z=@(t,ALL)dynamicsPEMA(t,ALL);
Z=@(t,ALL)dynamicsPEMA(t,ALL);
D=@(t,ALL)eventsfun(ALL,x0);
options=odeset('Events',D,'RelTol',10^-5,'AbsTol',10^-6);
[t,ALL]=ode45(Z,tspan,xinit,options);

X1=ALL(:,1);
X2=ALL(:,2);
Xref1=ALL(:,3);
Xref2=ALL(:,4);
K1=ALL(:,5);
K2=ALL(:,6);
L1=ALL(:,7);
TH3=ALL(:,8);
TH4=ALL(:,9);
TH5=ALL(:,10);
U=ALL(:,11);
R=ALL(:,12);


% K_dot , L_dot ,Th_dot
K=[K1 ,K2];
L=L1;
TH=[TH3 , TH4, TH5];

K_dot1=gradient(K1-K_star_1);
K_dot2=gradient(K2-K_star_2);
L_dot1=gradient(L-L_star_1);
TH_dot1=gradient(TH3-Th_star_3);
TH_dot2=gradient(TH4-Th_star_4);
TH_dot3=gradient(TH5-Th_star_5);

%% DHMIOURGOUME TA APARAITITA VARIABLES SUMFWNA ME TO VECTOR POU EPISTREFEI H ODE

% X and Xref.
X=[X1 , X2];
Xref=[Xref1 , Xref2];

% Error , Error_f, Error_p
ef=X1-Xref1;
ep=X2-Xref2;

% Plots
%Plots

figure(20)
plot(t,K1,'blue');
title('K1 - t');
ylabel('$K1(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);

figure(21)
plot(t,K2,'blue');
title('K2 - t');
ylabel('$K2(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(22)
plot(t,L1,'blue');
title('L1 - t');
ylabel('$L1(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);

figure(23)
plot(t,TH3,'blue');
title('TH3 - t');
ylabel('$TH3(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(24)
plot(t,TH4,'blue');
title('TH4 - t');
ylabel('$TH4(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(25)
plot(t,TH5,'blue');
title('TH5 - t');
ylabel('$TH5(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);



figure(26)
plot(t,ALL(:,5:1:10));
title('Prosarmostika Kerdoi - K1,K2,L,TH3,TH4,TH5');
ylabel('$Pref(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);
legend('K1','K2','L1','TH3','TH4','TH4');

figure(27)
plot(t,X1,'blue');
title('F(t) - t');
ylabel('$F(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);

figure(28)
plot(t,Xref1,'blue');
title('Fref(t) - t');
ylabel('$Fref(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(29)
plot(t,X2,'red');
title('P(t) - t');
ylabel('$P(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(30)
plot(t,Xref2,'red');
title('Pref(t) - t');
ylabel('$Pref(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(31)
plot(t,ef,'black');
title('Error_f(t) - t');
ylabel('$Error_f(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(32)
plot(t,ep,'black');
title('Error_p(t) - t');
ylabel('$Error_p(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(33)
plot(t,U,'green');
title('u(t) - t');
ylabel('$u(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(37)
plot(t,R,'blue');
title('r(t) - t');
ylabel('$r(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);



figure(100)
plot(t,K_dot1,'yellow');
title('K_dot1(t) - t');
ylabel('$K_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(101)
plot(t,L_dot1,'yellow');
title('L_dot(t) - t');
ylabel('$L_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(102)
plot(t,TH_dot1,'yellow');
title('Th_dot1(t) - t');
ylabel('$Th_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(103)
plot(t,TH_dot2,'yellow');
title('Th_dot2(t) - t');
ylabel('$Th_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);

figure(104)
plot(t,TH_dot3,'yellow');
title('Th_dot3(t) - t');
ylabel('$Th_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


%% ERWTHMA E)


%% UPOLOGISMOS TOU PINAKA P MESO TOU Q SUMFWNA ME THN EXISWSH P*Aref + ArefT*P = -Q
syms p11 p12 p22;

%%%%%%%%%%%
% Q=[3,3;3,3];
%%%%%%%%%%%

Aref=[0 , 1 ; -1 , -1.4];
ArefT=Aref';

P=[p11 , p12 ; p12 , p22]; %p1p2-p3^2>0 p1>0


eqn = P*Aref + ArefT*P == -Q;

[O,N] = equationsToMatrix([eqn] , [p11 p12 p22 ]);
H=linsolve(O,N);

P=[ H(1) ,  H(2) ;  H(2) ,  H(3)];

p=P
q=Q;

%% r(t) SUNARTHSH EISODOU KAI CHOISE =0 GIA THN ODE
choise =0;
r=@(t)0.1745*sin(t);


%% EPILUSH TWN DIAFORIKWN EXISWSEWN
x0=0;
Z=@(t,ALL)dynamicsPEMA(t,ALL);
D=@(t,ALL)eventsfun(ALL,x0);
options=odeset('Events',D,'RelTol',10^-5,'AbsTol',10^-6);
[t,ALL]=ode45(Z,tspan,xinit,options);

X1=ALL(:,1);
X2=ALL(:,2);
Xref1=ALL(:,3);
Xref2=ALL(:,4);
K1=ALL(:,5);
K2=ALL(:,6);
L1=ALL(:,7);
TH3=ALL(:,8);
TH4=ALL(:,9);
TH5=ALL(:,10);
U=ALL(:,11);
R=ALL(:,12);

%%
for(i=1:1:size(t,1))
   KSTAR1(i)=K_star_1;
   KSTAR2(i)=K_star_2;
   LSTAR1(i)=L_star_1;
   THSTAR3(i)=Th_star_3;
   THSTAR4(i)=Th_star_4;
   THSTAR5(i)=Th_star_5;
end

% K_dot , L_dot ,Th_dot
K=[K1 ,K2];
L=L1;
TH=[TH3 , TH4, TH5];

K_dot1=gradient(K1-K_star_1);
K_dot2=gradient(K2-K_star_2);
L_dot1=gradient(L-L_star_1);
TH_dot1=gradient(TH3-Th_star_3);
TH_dot2=gradient(TH4-Th_star_4);
TH_dot3=gradient(TH5-Th_star_5);

%% DHMIOURGOUME TA APARAITITA VARIABLES SUMFWNA ME TO VECTOR POU EPISTREFEI H ODE

%X and Xref.
X=[X1 , X2];
Xref=[Xref1 , Xref2];

%Error , Error_f, Error_p
ef=X1-Xref1;
ep=X2-Xref2;

%Plots

figure(38)
plot(t,K1,'blue');
title('K1 - t');
ylabel('$K1(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(39)
plot(t,K2,'blue');
title('K2 - t');
ylabel('$K2(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(40)
plot(t,L1,'blue');
title('L1 - t');
ylabel('$L1(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(41)
plot(t,TH3,'blue');
title('TH3 - t');
ylabel('$TH3(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(42)
plot(t,TH4,'blue');
title('TH4 - t');
ylabel('$TH4(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(43)
plot(t,TH5,'blue');
title('TH5 - t');
ylabel('$TH5(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(44)
plot(t,ALL(:,5:1:10));
title('Prosarmostika Kerdoi - K1,K2,L,TH3,TH4,TH5');
ylabel('$Pref(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);
legend('K1','K2','L1','TH3','TH4','TH4');

figure(45)
plot(t,X1,'blue');
title('F(t) - t');
ylabel('$F(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(46)
plot(t,Xref1,'blue');
title('Fref(t) - t');
ylabel('$Fref(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);

figure(47)
title('P(t) - t');
ylabel('$P(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);
plot(t,X2,'red');

figure(48)
plot(t,Xref2,'red');
title('Pref(t) - t');
ylabel('$Pref(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);

figure(49)
title('Error_f(t) - t');
ylabel('$Error_f(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);
plot(t,ef,'black');

figure(50)
plot(t,ep,'black');
title('Error_p(t) - t');
ylabel('$Error_p(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(51)
plot(t,U,'green');
title('u(t) - t');
ylabel('$u(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(55)
plot(t,R,'blue');
title('r(t) - t');
ylabel('$r(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(200)
plot(t,K_dot1,'yellow');
title('K_dot1(t) - t');
ylabel('$K_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);

figure(209)
plot(t,K_dot2,'yellow');
title('K_dot2(t) - t');
ylabel('$K_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(201)
plot(t,L_dot1,'yellow');
title('L_dot(t) - t');
ylabel('$L_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(202)
plot(t,TH_dot1,'yellow');
title('Th_dot1(t) - t');
ylabel('$Th_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(203)
plot(t,TH_dot2,'yellow');
title('Th_dot2(t) - t');
ylabel('$Th_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(204)
plot(t,TH_dot3,'yellow');
title('Th_dot3(t) - t');
ylabel('$Th_dot(t)$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);



figure(56)
plot(t,KSTAR1,'red');
title('K1* - t');
ylabel('$K1*$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(57)
plot(t,KSTAR2,'red');
title('K2* - t');
ylabel('$K2*$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(58)
plot(t,LSTAR1,'red');
title('L1* - t');
ylabel('$L1*$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);
plot(t,LSTAR1,'red');

figure(59)
plot(t,THSTAR3,'red');
title('TH3* - t');
ylabel('$TH3*$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(60)
plot(t,THSTAR4,'red');
title('TH4* - t');
ylabel('$TH4*$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);


figure(61)
plot(t,THSTAR5,'red');
title('TH5* - t');
ylabel('$TH5*$','Interpreter','latex','fontsize',20);
xlabel('$t$','Interpreter','latex','fontsize',20);
