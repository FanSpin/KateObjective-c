%Eular's methods ODE
%f(x) =x^2 dydx = 2*x

%Not Used f(x) =x^2 dydx = 2*x
%Not used dy/dx = x*y = f(x,y)
%Not used dy = dx(x*y) = h*f=f(x*y)

dy = @(x,y) x*y;
f = @(x) exp(x^2 /2 );


x0 =0;    %Domain begin
xn = 1;   %Domain end
y = 1;     %y(0)=1
h = 0.1;  %stepsize%try 0.5 the 0.1 then 0.01

fprintf (' x    \t\t   y (Eular)  \t  y (analitcal)  \n') %data table header
fprintf (' %f  \t  %f\t  %f\n'     , x0 , y , f(x0) ); %First Row of table (ics)

for x = x0 : h : xn - h
      y = y + dy(x,y)*h;
      x = x + h;
      fprintf (' %f  \t  %f\t  %f\n' , x , y , f(x) );
end

%xlim([0 10])%ylim([-5 5]) After Plot

plot(x,f(x),'b+')

title('Fucked Up')
xlim([0 2])
ylim([0 2])
