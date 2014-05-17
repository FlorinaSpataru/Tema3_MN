function nearest_neighbor(image)
   I = imread(image);
   [p q] = size(I); 
   A = zeros(2*p,2*q); % creez o matricec de zerouri de dimensiunea ceruta
	% parcurg matricea din 2 in 2
	% daca as avea o matrice de 1 pe 1 [a] si as vrea sa devina [a a; a a] 
	A(1:2:2*p,1:2:2*q) = I(1:p,1:q); % aici imi adauga elementul din stanga sus
	A(1:2:2*p,2:2:2*q) = I(1:p,1:q); % elementul din dreapta sus
	A(2:2:2*p,1:2:2*q) = I(1:p,1:q); % elementul din stanga jos
	A(2:2:2*p,2:2:2*q) = I(1:p,1:q); % elementul din dreapta jos
	% rationamentul e la fel pt o matrice oricat de mare
	B = uint8(A); % pt siguranta, transform in int

	L = length(image);
	End = image(10:L);
   imwrite(B, strcat("out_nn_",End));
