close all
clear

path= '/Users/edoardoghini/GitHub/ComputerVision/gantrycrane.png';
im =imread(path);
imshow(im);
[x,y] = ginput(2);
first_point= ([ x(1), x(2), 1]');
second_point= ([ y(1), y(2), 1]');
common_line= cross(first_point,second_point);
im_dimensions= size(im);
points= draw_line_points(common_line, im_dimensions);
imshow(im);
hold on;
plot(points(:,1), points(:,2),'b');
plot( [first_point(1);first_point(2)],[second_point(1);second_point(2)],'r');
hold off;


%x=ginput(2)'; %returns 2 points taken from interactive mouse pointer
%x=[x;ones(1,2)]; %homogenization
