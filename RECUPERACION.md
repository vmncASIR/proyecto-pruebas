# Recuperación de archivo borrado accidentalmente

## Error simulado
Se borró el archivo `errores.sh` usando `git rm` y se confirmó el borrado con un commit.

## Comandos utilizados
1. `git reflog` — para ver el historial de commits y localizar el commit donde existía el archivo.
2. `git checkout 1800761 -- errores.sh` — para recuperar el archivo desde ese commit concreto.
3. `git commit` — para confirmar la recuperación.

## Aprendizaje
Git guarda todo el historial de cambios, incluso los borrados. Con `git reflog` podemos localizar cualquier punto anterior del repositorio y con `git checkout` recuperar archivos concretos de ese momento.
