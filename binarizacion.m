function imagen = binarizacion(imagen)
    % Se considerará como umbral para binarizar el promedio de todos los
    % pixeles
    promedio = mean2(imagen);
    % Luego, se obtienen las dimensiones de la imagen
    [filas, columnas] = size(imagen);
    for i=1:filas
        for j=1:columnas
            if imagen(i, j) <= promedio
                imagen(i, j) = 0;
            else
                imagen(i, j) = 1;
            end
        end
    end
    

   