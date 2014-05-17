function crop(image)
   I = imread(image); % avand in vedere ca nu fac operatii cu pixelii, nu e necesar sa fie double
   [m n] = size(I);

   I = I(fix(m/4)+1:fix(3*m/4),fix(n/4)+1:fix(3*n/4));
	% in mare, iau partea de imagine de la m/4 la 3m/4 si n/4 la 3n/4
	% pt ca folosesc fix, e necesar un +1
   imwrite(I, strcat("out_crop_",image));
