function add_zero(image)
   I = imread(image);
   [p q] = size(I); 
   A = zeros(2*p-1,2*q-1); % contruiesc o matrice numai de zerouri de dimensiunea ceruta
   A(1:2:2*p-1,1:2:2*q-1) = I(1:p,1:q); % parcurg matricea din 2 in 2 adaugand elemente
													 % din matricea initiala (cea mica)

	B = uint8(A); % nu e 100% necesar, dar pt siguranta, am transformat-o in int

   L = length(image);
	End = image(10:L);
   imwrite(B, strcat("out_add_zero_",End));
