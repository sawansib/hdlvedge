function [p1_out,p2_out] = vedge(b1_in,b2_in)
D = [-1 1]';
BSI = [b1_in b2_in];
OrigImg_1 = D*BSI;
%PD=abs((b1_in)-(b2_in));
    p1_out=OrigImg_1(1,1);
    p2_out=OrigImg_1(2,2);
               

end