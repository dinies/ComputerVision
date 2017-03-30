%workspace operarions 
who
whos
clear


%matrix invocation
X= ones(3)
X= zeros(3)
X= eye(3) %identity
X= rand(3)

help   [command]

size(vector)

v' %transpose
v.+w %element wise operator '.' 

inv(mat)

C/B % equal to solve the system xB=C, equal to C*inv(B)

B'\C %ewual to solve B'x=C

%indexing of matrices
1 4 7
2 5 8
3 6 9
%top-bottom left to right

A(2:end, 1:2)
A(:) %matrix becomes a vector

logical_matrix= (A > 5  &  A ~= 9 ) % ~= disequality operator

%data structure 
struct.A= some_matrix;
struct.v= some_vector;

%matrix manipulation
new_shape_matrix= reshape(A, [desired_rows, desired_columns] ) ;

 cat(M)

matrix_with_repetitions= repmat(v, 2, 3) ;

%a++ not used --> explicit increment a= a+1

[V,D] = eig(A) ;

%working with images
imb= imread('whatever_image_path/image.png')

%image indexing
top-bottom , left-right , n= number_of_rows , m= number_of_columns
(1,1)--(m,1)
  |      |
(1,n)  (m,n)


[2,4,~] = whatever_func(M);
%~ operator specifies that i don't need to remember that output in a variable

