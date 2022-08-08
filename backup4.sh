#!/bin/bash
#Autor: Ruben Bruno Cavalcante de Menezes 
#Em caso de bugs enviar um email para
#email: rubenbruno@outlook.com
while : [$? = 0]
do

DIR_ORIG=$(dialog --title "Backup" --inputbox "Informe o diretório de origem:" 10 35 --stdout) [ $? -eq 1 ] && exit
DIR_DEST=$(dialog --title "Backup" --inputbox "Informe o diretório de destino:" 10 35 --stdout) [ $? -eq 1 ] && exit 
BKP_NAME=`date +%d-%m-%Y-%H.%M`
if sudo tar -czpf ${DIR_DEST}${BKP_NAME}.tar ${DIR_ORIG}; then
dialog --title "Backup realizado com Sucesso" --yesno "Deseja sair?" 0 0 && exit
else 
dialog --title "Backup foi interrompido"  --yesno "Deseja sair?"0 0 && exit

fi

 done
