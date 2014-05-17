//Spataru Florina Gabriela 313 CA Tema3 Metode Numerice//

Versiune Octave 3.2.4

Task 1
Pentru a reduce calitatea imaginii ergo a reduce spatiul ocupat pe Hard disk, 
din fiecare pixel al imaginii scad un procent rate din el insusi.
Gen, pentru rate=23, new_pixel = old_pixel(1-23/100)

Task 2
Subimaginea centrala , daca avem o matrice de [n m] va fi de la n/4 la 3n/4 si 
de la m/4 la 3m/4. Am folosit fix in caz ca n sau m nu sunt divizibile cu 4.

Task 3.1
Nearest neighbor "dubleaza" fiecare pixel, desi, practic [a] devine [a a; a a].
Creez o matrice de dimensiunile cerute si adaug la fiecare dintre cei 4 pasi 
cate un "a", in mare vorbind. Rationamentul este acelasi pentru o matrice de 
orice dimensiune.

Task 3.2.1
Creez o matrice de zerouri de dimensiunile cerute si folosesc prima linie de 
parcurgere a matricei din nearest_neighbor.m. Merg din 2 in 2, adaugand elemente
din matricea initiala, restul ramanand zero.

Task 3.2.2
Probabil ca se putea implementa si mai usor de atat, dar asta e metoda pe care 
am gasit-o. Intai, fac la fel ca la add_zero.m. La urmatorul pas parcurg pe linii
si adaug media, apoi la fel pe coloane. Dupa, parcurg din 2 in 2 si pe linii si 
pe coloane si adaug media celor 4 pixeli. Cum metoda mea nu e cea mai buna, dupa 
aceste parcurgeri, unde ar trebui sa fie medii pe ultima linie si ultima coloana,
este zero asa ca voi mai face 2 parcurgeri separat si voi adauga media. 
Din fericire, timpul de executie nu e sesizabil afectat.

