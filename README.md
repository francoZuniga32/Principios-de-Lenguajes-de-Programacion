# Principios-de-Lenguajes-de-Programacion

## Instalacion de los scripts compiladores

```bash
# creamos la carpeta de scripts en tu home
mkdir ~/.scripts
# exportamos esa carpeta en el PATH de tu sistema, para que puedas ejecutar el script como un comando de bash
echo 'export PATH="$PATH:/home/<tu_home>/.scripts/"' >> ~/.bashrc 
# aplicamos los cambios en tu sistema
source ~/.bashrc
# copiamos el script en tu carpeta de scripts local
cp ghcompile.sh ~/.scripts/.
cp plcompile.sh ~/.scripts/.
``` 

puede ejecutarlos usando `ghcompile.sh archivo`. es importante aclarar que no tiene que llevar el .hs al final, o un archivo de pascal `plcompile.sh archivo`
