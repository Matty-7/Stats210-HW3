clc;clear
mu = 1; std = 1;
N = 10000;
X    = zeros(1,N);
Xbar = zeros(1,N);
for i = 1:N  
    X(i) = randn(1)*std+mu;
    Xbar(i) = mean(X(1:i));
end

figure(1)
plot(1:N,Xbar,'k-')
xlabel('$N$','interpreter','latex','FontSize', 12)
ylabel('$\bar{X}$','interpreter','latex','FontSize', 12)