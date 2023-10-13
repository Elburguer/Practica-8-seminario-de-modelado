[t,x]=ode45(@ELM, [0 10], [0 0 0]);
%Graficamos nuestro sistemas de ecuaciaones
% x y t son parametros que retorna la función que creamos
%Figura 1
figure(1)
plot(t,x(:,3),'R');
grid on
title("Si");
xlabel("Tiempo");
ylabel("Voltaje");