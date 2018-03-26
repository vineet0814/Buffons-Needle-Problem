function [abspivalue,piapproxvalue]=needlefunction(m)
a=1;  %2a is length of needle
%b=1;  %2b is the distance between any two parallel lines
h=0;  %number of hits
for m=0:1:m-1
    g=rand(1);
    l = a*g; %the distance between center of the needle and point of contact. Maximum value can be 'a'
    theta = rand(1)*(pi/2); %angle made with the normal
    t = a*cos(theta);
    
    if l<=t
        h=h+1;
    end
        
   
end

piapproxvalue = (2*m)/(h);
abspivalue=abs(piapproxvalue-pi);

fprintf('Number of hits = %d\nPi approximate value = %f\nAbsolute of estimate and pi = %f\n', h,piapproxvalue, abspivalue);
end


    
   
    