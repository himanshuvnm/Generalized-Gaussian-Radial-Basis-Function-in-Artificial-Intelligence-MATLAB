close,clc,clear
theta=0:.01:2*pi;
r=0:1/628:1;
sigma0=1.867;
sigma=2;
sigma_hat=(sigma0/sigma)^2;
n=1;
hypera=zeros(n,1)+sigma_hat;
hyperb=zeros(n,1)+sigma_hat+1;
calF=hypergeom(hypera,hyperb,1);
normalization_constant=sqrt(sigma^(2*n)/(calF*factorial(n)));
zn=(r.*exp(1i*theta)).^n;
en_zn=normalization_constant*zn;
polarplot(en_zn,'--')
hold on
n=4;
hypera=zeros(n,1)+sigma_hat;
hyperb=zeros(n,1)+sigma_hat+1;
calF=hypergeom(hypera,hyperb,1);
normalization_constant=sqrt(sigma^(2*n)/(calF*factorial(n)));
zn=(r.*exp(1i*theta)).^n;
en_zn=normalization_constant*zn;
polarplot(en_zn,'o')
hold on
n=8;
hypera=zeros(n,1)+sigma_hat;
hyperb=zeros(n,1)+sigma_hat+1;
calF=hypergeom(hypera,hyperb,1);
normalization_constant=sqrt(sigma^(2*n)/(calF*factorial(n)));
zn=(r.*exp(1i*theta)).^n;
en_zn=normalization_constant*zn;
polarplot(en_zn,'diamond')
legend('$n=1$','$n=4$','$n=8$','interpreter','latex')
title('Polar plot of orthonormal basis $\mathbf{e}_n(z)=\sqrt{\frac{\sigma^{2n}}{n!\mathcal{F}_{n,\hat{\sigma},1}}}z^n$, with $\sigma=2$ and $\sigma_0=0.001$','interpreter','latex')
saveas(gcf,'myfigure.png')