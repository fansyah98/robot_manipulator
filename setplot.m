
function [] = setplot()
global x2 y2 x3 y3 xt yt 						% position variable
global S1 S2 S3 S4 S5 S6						% position strings 
global pF1 pF2 pF3								% handles for fill
global C2 C3 Ct									% handles for the joint's circle
global J2 J3 Jt									% handles for the joint's pluses
global dis											% handles for text display
global L1 L2 L3 Link1 Link2 Link3			% Link matrices
global STOP Chose T1 T2 T3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if (abs(T1)>90|abs(T2)>90|abs(T3)>90|yt<0|y3<0|y2<0)&Chose~=1&Chose~=4
   STOP=1;
   warning(['KONTZ IS A MORON!  PLEASE EMAIL HIM AT MKONTZ@MAIL.COM'])
else    
set(pF1,'xdata',L1(1,:),'ydata',L1(2,:));	% 3 fills (2-t) 
set(pF2,'xdata',L2(1,:),'ydata',L2(2,:));    
set(pF3,'xdata',L3(1,:),'ydata',L3(2,:));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(C2,'xdata',x2,'ydata',y2);  		% 3 circles (2-t)
set(C3,'xdata',x3,'ydata',y3);   
set(Ct,'xdata',xt,'ydata',yt);  
set(J2,'xdata',x2,'ydata',y2);   		% 3 plus (2-t)
set(J3,'xdata',x3,'ydata',y3);   
set(Jt,'xdata',xt,'ydata',yt);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(dis(3),'string',mat2str(S1)); 				% theta 1
set(dis(4),'string',mat2str(S2));				% xt
set(dis(5),'string',mat2str(S3));				% theta 2
set(dis(6),'string',mat2str(S4));				% yt
set(dis(7),'string',mat2str(S5));				% theta 3
set(dis(8),'string',mat2str(S6)); 				% phi
end
