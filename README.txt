Script: ipyes.sh
Autor: Arturo Mata <arturo.mata@gmail.com>
Version: 1.0.0
Repositorio: https://github.com/matarturo/
Released under the GNU General Public License WITHOUT ANY WARRANTY.
See LICENSE.TXT for details.

# Script escrito en lenguaje Bash para detectar hosts dispinobles en un segmento de red

# Requisitos

Ejecutar el script con privilegios <root>

# Instalación

Para correr este script se requiere ingresar al equipo con credenciales de usuario < root >

$ cd /var/log
$ sudo git clone https://github.com/matarturo/hosts_up.git
$ cd hosts_up
$ sudo cp ipyes.sh /var/log
$ cd /var/log

# Para otorgar permisos de ejecución

$ sudo chmod 755 ipyes.sh

# Editar el archivo

Aun en el directorio < var/log > se escribe la siguiente línea de código < ls -l > y se despliega la 
lista de los diferentes archivos contenido en la referida ubicación, se selecciona el script: 
mapper.sh. Para editar el archivo  <.sh >, se deberá utilizar el comando <nano> que corresponde 
al editor de código nativo 
de Linux.

$ sudo nano ipyes.sh 

# Ejecución del script

La ejecución el script se debe utilizar la notación < ./ > (punto-diagonal-slash), para que efectúe 
la búsqueda del script en el directorio actual en vez de ir a buscar en todos los directorios que 
aparecen en $PATH, de la siguiente manera < ./ipyes.sh >, dependiendo de la versión de Linux, 
solicitara el uso el comando < sudo > para ejecutar programas con los privilegios de seguridad de super usuario.

$ sudo ./ipyes.sh <IP/Subnet>

# Cuando a aparezca en pantalla el reporte, el paso siguiente es detener el proceso.

$ exit
