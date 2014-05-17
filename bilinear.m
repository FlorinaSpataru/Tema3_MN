function bilinear(image)
   I = double(imread(image)); % fiindca fac operatii cu pixelii, citesc matricea ca double
   [p q] = size(I);

   A = zeros(2*p-1,2*q-1); % creez o matrice de zerouri

	A(1:2:2*p-1,1:2:2*q-1) = I(1:p,1:q); % aici imi adauga elementele din I, nemodificate, din 2 in 2
	A(1:2:2*p-2,2:2:2*q-2) = round( ((I(1:p-1,1:q-1)/2) + (I(1:p-1,2:q)/2)) );
	% aici parcurg matricea pe linii si fac media dintre elemntul din stanga si cel din drepta
	A(2:2:2*p-2,1:2:2*q-2) = round( ((I(1:p-1,1:q-1)/2) + (I(2:p,1:q-1)/2)) );
	% aici parcurg pe coloane, facand acelasi lucru
	A(2:2:2*p-2,2:2:2*q-2) = round( I(1:p-1,1:q-1)/4 + I(1:p-1,2:q)/4 + I(2:p,1:q-1)/4 + I(2:p,2:q)/4 );
	% aici imi adauga elementul din "mijloc", cel cu media/4

	A(2:2:2*p-2,2*q-1) = round( (A(1:2:2*p-2,2*q-1)/2 + A(3:2:2*p-1,2*q-1)/2) );
	A(2*p-1,2:2:2*q-2) = round( (A(2*p-1,1:2:2*q-2)/2 + A(2*p-1,3:2:2*q-1)/2) );
	% in felul in care am parcurs matricea mai sus, pe ultima linie si pe ultima coloana imi va ramane zero
	% asa ca le parcurg pe fiecare o data, si adaug media

	B = uint8(A); % transform inapoi in int

	L = length(image);
	End = image(10:L);

   imwrite(B, strcat("out_bilinear_",End));

