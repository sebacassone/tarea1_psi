function imagen = xdog(imagenNormal, sigma, gamma, k, epsilon, phi)
    % Se convierte la imagen a escala de grises
    imagenGris = im2double(rgb2gray(imagenNormal)); % Se transforma para poder trabajar con tanh
    % Se calcula la diferencia Gaussiana
    imagenDifGauss = diferenciaGaussiana(imagenGris, sigma, sigma * k, gamma);
    % Se calcula la imagen de la función de transferencia
    % Obtenemos el tamaño de la imagen
    [filas, columnas] = size(imagenDifGauss);
    for i=1:filas
        for j=1:columnas
            if imagenDifGauss(i, j) < epsilon
                imagenDifGauss(i, j) = 1;
            else
                imagenDifGauss(i, j) = 1 + tanh(phi * imagenDifGauss(i, j));
            end
        end
    end
    imagen = mat2gray(imagenDifGauss);
end