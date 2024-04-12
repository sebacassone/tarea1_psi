function imagen = xdog(imagenNormal, sigma, gamma, k, epsilon, phi)
    % Se convierte la imagen a escala de grises
    imagenGris = rgb2gray(imagenNormal)
    % Se calcula la diferencia Gaussiana
    imagenDifGauss = diferenciaGaussiana(imagenGris, sigma, sigma * k, gamma)
    % Se calcula la imagen de la función de transferencia
    if imagenDifGauss < epsilon
        imagenTransferencia = 1
    else
        imagenTransferencia = funcionTransferencia(imagenGris, k, epsilon, phi)
    end
    % Se calcula la imagen final
    imagen = imagenDifGauss .* imagenTransferencia
end