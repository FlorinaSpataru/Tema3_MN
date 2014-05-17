function reduce_dimension(image,rate)
   I = double(imread(image)); % citesc matricea ca pe un double
   I = I.*(1-rate/100); % scad din fiecare pixel un procent rate 

	A = uint8(I); % transform matrucea in int

   x1 = "out_rd_"; x2 = int2str(rate); x3 = "_"; x4 = image; % contruiesc numele imaginii de out
   out_image = strcat(x1,x2,x3,x4);
   imwrite(A,out_image,"pgm");
