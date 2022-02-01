#!/bin/bash
Script: ipyes.sh
Autor: Arturo Mata <arturo.mata@gmail.com>
Version: 1.0.0
Repositorio: https://github.com/matarturo/
Released under the GNU General Public License WITHOUT ANY WARRANTY.
See LICENSE.TXT for details.

# Script escrito en lenguaje Bash para detectar hosts dispinobles en un segmento de red

star=`date +%s`
echo "*********Buscando...**********"
for ((i = 0; i <= 255; i++))
do
{
       ping 192.168.43.$i -c 2 |grep -q "ttl=" && echo "192.168.43.$i --> en uso" >> ipno.txt || echo "192.168.43.$i di$}&
done
wait

end=`date +%s`
echo $end
echo "*************Tiempo total de escaneo:`expr $end - $star `**************"
echo
echo "*************Direcciones IP's activas**************"
cat ipno.txt
exit 0
