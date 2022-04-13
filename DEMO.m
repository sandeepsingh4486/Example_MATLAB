clc;clear all;
%% ARITHMETIC OPERATIONS
a=2;b=3;
c=a+b; %addition
d=a-b;
e=a*b;
f=a/b;
g=a\b;

%%
X=input('enter the value of X: ');
Y=input('enter the value of Y: ');
Z=input('enter the value of Z: ');
x=Y/(2*X);
y=(sqrt(Y^2-4*X*Z))/(2*X);
p=x+y;
q=x-y;
display(p); display(q);
%%
angle=input('enter the value of angle');
a=sin(angle);
b=cos(angle);
c=tan(angle);
d=sec(angle);
e=csc(angle);
%%
figure 
t = 0:pi/20:2*pi; 
plot(t,sin(t),'-.r*');
hold on;
plot(t,sin(t-pi/2),'--mo') ;
plot(t,sin(t-pi),':bs')
hold off 
title('2-D Line Plot')
xlabel('x')
ylabel('cos(5x)')
legend('cos(x)','cos(2x)')

%%
t = 0 : pi/40 : 6*pi;
h = cos(8*t) + cos(9*t);
plot(t, h, 'r');
grid;
%%
t = 0:.1:2*pi;
subplot(2,2,1)
plot(cos(t),sin(t),'r')
subplot(2,2,2)
plot(cos(t),sin(2*t), 'b')
subplot(2,2,3)
plot(cos(t),sin(3*t),'y')
subplot(2,2,4)
plot(cos(t),sin(4*t), 'g')
%%
figure
plot(h,t,'Color',[0,0.7,0.9])

title('2-D Line Plot')
xlabel('x')
ylabel('cos(5x)')
%%
% Top plot
ax1 = nexttile;
plot(ax1,x,y1)
title(ax1,'Top Plot')
ylabel(ax1,'sin(5x)')

% Bottom plot
ax2 = nexttile;
plot(ax2,x,y2)
title(ax2,'Bottom Plot')
ylabel(ax2,'sin(15x)')
%%
x = linspace(0,pi);
y1 = cos(x);
plot(x,y1)

hold on 
y2 = cos(2*x);
plot(x,y2)

legend('cos(x)','cos(2x)')

%%
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y);
%%
 x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x,y);

%%
X = 1:3;
labels = {'Taxes','Expenses','Profit'};
p = pie(X,labels);

%% mesh
[x, y] = meshgrid(-3:0.3:3);
z = x .* exp(-x.^2 - y.^2);
subplot(2,2,1)
mesh(z),title('subplot(2,2,1)')
subplot(2,2,2)
mesh(z)
view(-37.5,70),title('subplot(2,2,2)')
subplot(2,2,3)
mesh(z)
view(37.5,-10),title('subplot(2,2,3)')
%% Mexican Hat
[x y ] = meshgrid(-8 : 0.5 : 8); 
r = sqrt(x.^2 + y.^2) + eps; 
z = sin(r) ./ r; 
figure,mesh(z); 
figure,surf(z), shading flat
figure,surfc(z)
%%
tri_area(4,8)
%%
d=rand(4,3) ;
save randomnumbers.xls d -ascii



