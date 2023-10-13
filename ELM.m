function dx=ELM(t,x)
%Función del amplificador operacional
%-----Definimos nuestro parametros------%
Ra=2; %Resistencia 1 (Ohms)
La=0.023; %Inductor (Faradios) 
b=0.0012; %Amortiguador
Kt=0.01; %Motor
Ke=0.01; %Motor
J=0.001; %Inercia
V=5; %Voltaje de entrada
%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(3,1);
%-----Definición dinamica del sistema (Representanción de estados)-----%
dx(1)=1/La*(-Ra*x(1)-Ke*x(3)+V);
dx(2)=x(3);
dx(3)=1/J*(-b*x(3)+Kt*x(1));
%--------------------------------------%