set(0,'DefaultFigureWindowStyle','docked')
set(0,'defaultaxesfontsize',14)
set(0,'defaultaxesfontname','Times New Roman')
set(0,'DefaultLineLineWidth', 4);
v = 0:1;
x = 0:1;
f = 10;
m = 9.10938356*10^-31;
a = 10; 
t = 0;
dt = 1;
Nt = 100;

for i = 2:Nt 
    t = dt*i;
    time(i) = t; 
    v(:,i) = v(:,i-1) + (a*dt);
    x(:,i) = x(:,i-1) + (v(:,i-1)*dt) + ((a*dt)^2)/2;
    
    % for one particle
    % x = x + v*dt +(((a*dt)^2)/2);
    % v = v + a*dt;
    % v_t = v;
    % x_t = x;
    
     scatter = rand(50,1) <0.05;
    
     if scatter <0.05
         v = -0.25*v;
     end 
     drift = sum(v);
    
     subplot(3,1,1),
     plot(time,v,'-','Color',[0,0.7,0.9])
     hold on
     
     title(['Drift Velocity = ' num2str(drift)])
     xlabel('Time')
     ylabel('Velocity')
     
     
     subplot(3,1,2); 
     plot(time,x,'-','Color',[0,0.7,0.9])
     xlabel('Time')
     ylabel('Position')
     hold on
    
     subplot(3,1,3); 
     plot(x(1,:),v(1,:),'Color',[0,0.7,0.9])
     xlabel('Position')
     ylabel('Velocity')
     hold on
     drawnow

    
end