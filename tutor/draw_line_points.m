function p = draw_line_points (line_vec, im_dimesions )
%diag_length=abs(sqrt(im_dimesions(1)^2+im_dimesions(2)^2));
%diagonal_points=round(diag_length);
%points_vec = zeros(diagonal_points,3);
%k=1;
%for i= 1:im_dimesions(1)
%    for j =1:im_dimesions(2)
%        homo_point= [i; j; 1];
%        belong= homo_point'*line_vec;
%        if belong == 0
%            points_vec(k , :)= homo_point;
%            k= k+1;
%        end
%    end
%end
%p= points_vec(1:(k-1), :);

%image indexing
%(1,1)--(m,1)
%  |      |
%(1,n)  (m,n)
n= im_dimesions(1);
m= im_dimesions(2);
l_1= [ 1 ; 0 ; -1 ];
l_2= [ 0 ; 1 ; -1 ];
l_3= [ 0 ; 1 ; -n ];
l_4= [ 1 ; 0 ; -m ];

p_1= cross( line_vec , l_1');
p_2= cross( line_vec , l_2');
p_3= cross( line_vec , l_3');
p_4= cross( line_vec , l_4');

A_homo= [ p_1 ; p_2 ; p_3 ; p_4];
A= [ A_homo(:,1)./A_homo(:,3) , A_homo(:,2)./A_homo(:,3) ];
p=[];
for i= 1:length(A(:,1))
	if A(i,1) > 0 & A(i,1) <=m & A(i,2) > 0 & A(i,2) <= n
		p= [ p ; A(i,:) ];
	end
end
