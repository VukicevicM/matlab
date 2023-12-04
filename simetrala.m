function p=simetrala(A,B)
% simetrala(A,B) vrne simetralo daljice AB
% p=simetrala(A,B);
% p=[a b c] (ax+by+c=0)
% A=[x1,y1], B=[x2,y2]

x = (A(1)+ B(1))/2;
y = (A(2)+ B(2))/2;
vektor = B - A;

smer = [- vektor(2), vektor(1)];

p = [smer(1), smer(2), -(smer(1)*x + smer(2)*y)];