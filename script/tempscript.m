m=25;
a=-3;
b=-4;
kp=36;
ki=4;
ts=0.01;
t=[0:0.01:10]';
stin=[zeros(floor((length(t)/2)+1),1);5*ones(floor(length(t)/2),1)];
itr=200;
clear yitr
for  i=1:25:itr
    a=-i;
    sim('controlsys.slx')
    %yitr(:,i)=yout;
    hold on
    plot(tout,yout)
   % plot(tout,yitr)
    
end
hold off
