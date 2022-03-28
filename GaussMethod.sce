clear; clc
disp("Enter the matrix in square brackets [matrix]"+ascii(10)+"Separate a new line with a semicolon (;) and separate columns with a space")
A=input("Enter A (matrix A (matrix of coefficients)):");
b=input("Enter b (matrix b (vector of intercepts)):");
Ab=[A b]//macierz rozszerzona
L12=Ab(2,1)/Ab(1,1)//pierwszy mnożnik eliminacji
Ab(2,:)=Ab(2,:)-L12*Ab(1,:)//eliminacja z drugiego równania
L13=Ab(3,1)/Ab(1,1)//drugi mnożnik eliminacji
Ab(3,:)=Ab(3,:)-L13*Ab(1,:)//eiminacja z trzeciego równania
L23=Ab(3,2)/Ab(2,2)//pierwszy mnożnik eliminacji
Ab(3,2:$)=Ab(3,2:$)-L23*Ab(2,2:$)//eliminacja z trzeciego równania
X(3)=Ab(3,4)/Ab(3,3)//obliczanie rozwiązania od końca
X(2)=(Ab(2,4)-Ab(2,3)*X(3))/Ab(2,2)
X(1)=(Ab(1,4)-Ab(1,2)*X(2)-Ab(1,3)*X(3))/Ab(1,1)
Xtest=linsolve(A,-b)
disp(Xtest)
