clc;clear;
p = 1/2;        
n = 10000;      
X = zeros(n,1); 
Y = zeros(n,1);

for i = 1:n
    x = 1;
    while rand>p
          x = x+1;
    end
    X(i) = x;
end

for i = 1:n
    y = 1;
    while rand>p
          y = y+1;
    end
    Y(i) = y;
end

Z = X+Y;

K = (2:20)';
for i = 1:length(K)
    k = K(i);
    pz(i,1) = p^2*(1-p)^(k-2)*(k-1);
    pz_hat(i,1) = length(find(Z==k))/n;
end
Ans= [K pz pz_hat];

figure(1);
clf;
hold on;
box on;
plot(K,pz,'k-x')
plot(K,pz_hat,'k-o')
xlabel k
ylabel p
legend('$p_z$','$\hat{p}_z$','interpreter','latex','FontSize', 12)
set(gca,'FontSize', 12)
fprintf('  k            pz                 pzhat\n')
fprintf('%3d%20.12f%20.12f\n',Ans')