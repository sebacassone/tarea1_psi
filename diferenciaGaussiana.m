function imagen = diferenciaGaussiana(imagen, sigma1, sigma2, gamma)
    % Se calcula la imagen con el filtro Gaussiano de sigma1
    imagenGauss1 = imgaussfilt(imagen, sigma1)
    % Se calcula la imagen con el filtro Gaussiano de sigma2
    imagenGauss2 = imgaussfilt(imagen, sigma2)
    % Se calcula la diferencia entre las dos imágenes
    imagen = imagenGauss1 - imagenGauss2
end