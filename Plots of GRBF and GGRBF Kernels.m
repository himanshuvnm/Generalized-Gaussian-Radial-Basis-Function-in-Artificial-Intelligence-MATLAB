close,clc,clear
[X,Y] = meshgrid(-1:.01:1);
size2=length(X);
sigma=2+pi;
G = exp(-1/(sigma^2)*((Y).^2 + (X).^2));
%figure
%surf(X,Y,G,'FaceAlpha',0.5),colorbar
%title('Gaussian Radial Basis Function Kernel','Interpreter','latex')
%axis tight
figure
mesh(X,Y,G), colorbar, colormap(turbo)
xlabel('$x$','Interpreter','latex'),ylabel('$y$','Interpreter','latex'),zlabel('$z$','Interpreter','latex')
title('Gaussian Radial Basis Function Kernel; $\sigma=\frac{1}{2}$','Interpreter','latex')
axis tight
saveas(gcf,'sigma_2sigma2_.98myfigure1_16022024.png')
sigma2=.98;
GG=exp(-1/(sigma^2)*((Y).^2 + (X).^2)).*exp(exp(-1/(sigma2^2)*((Y).^2 + (X).^2))-1);
%figure
%surf(X,Y,GG,'FaceAlpha',0.5)
%title('Generalized Gaussian Radial Basis Function Kernel','Interpreter','latex')
%colormap cool, colorbar, axis tight
figure
mesh(X,Y,GG), colormap(jet), xlabel('$x$','Interpreter','latex'),ylabel('$y$','Interpreter','latex'),zlabel('$z$','Interpreter','latex')
title('Generalized Gaussian Radial Basis Function Kernel; $\sigma=\frac{1}{2}$, $\sigma_0=\frac{1}{0.98}$','Interpreter','latex')
axis tight 
colorbar
saveas(gcf,'sigma_2sigma2_.98myfigure2_16022024.png')
figure 
contourf(X,Y,G,50),colorbar, colormap(turbo), title('50 Contours of Gaussian Radial Basis Function Kernel','Interpreter','latex')
saveas(gcf,'sigma_2sigma2_.98myfigure3_16022024.png')
figure
contourf(X,Y,GG,50),colorbar, colormap(jet), title('50 Contours of Generalized Gaussian Radial Basis Function Kernel; $\sigma=\frac{1}{2}$, $\sigma_0=\frac{1}{0.98}$','Interpreter','latex')
saveas(gcf,'sigma_2sigma2_.98myfigure4_16022024.png')
%figure 
%contour3(X,Y,G,100),colorbar
%figure
%contour3(X,Y,GG,100),colorbar