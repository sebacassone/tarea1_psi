% Valores
gamma = 0.98;
phi = 200;
epsilon = -0.1;
k = 1.6;
sigma = 0.8;

% Se carga la imagen
imagen = imread('tigre.png');
% Se llama a la función xdog, 
imagenFinal = xdog(imagen, sigma, gamma, k, epsilon, phi);

% Se binariza con otsu la imagen final
ifb=binarizacion(imagenFinal);

% Se muestra la imagen final
figure,
subplot(1,3,1), imshow(imagen), title('original'),
subplot(1,3,2), imshow(imagenFinal), title('XDOG'),
subplot(1,3,3), imshow(ifb), title('XDOG Binarizado');
