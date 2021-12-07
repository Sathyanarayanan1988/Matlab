%Code for generating cylinder of radius 1(m)
clc;
n=3;
xy=0;

ID = fopen('Op.txt','w');
fprintf(ID,'		#Cylinder');
fprintf(ID,'\n');
fprintf(ID,'#group	#point	#x_cord	#y_cord	#z_cord');
fprintf(ID,'\n');
for i=1:1:361
    ii=i-1
    fprintf(ID,'1');
    fprintf(ID,'\t');
    fprintf(ID,'%d\t',ii);
    for j=1:2
        if j==1
            xy(i,j)=sind(ii) 
        elseif j==2
            xy(i,j)=cosd(ii)
        end
        fprintf(ID,'%f\t',xy(i,j));
    end
    fprintf(ID,'0.0000');
    fprintf(ID,'\n');
     %disp (i);
end

fclose(ID);