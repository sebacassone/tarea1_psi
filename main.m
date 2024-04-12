% Se carga la imagen
imagen = imread('mujer.png')
% Se llama a la función xdog
imagenFinal = xdog(imagen, 1, 2, 1, 0.01, 0.98)
% Se muestra la imagen final
imshow(imagenFinal)
