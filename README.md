# ShellWon
[![GoDoc](https://godoc.org/github.com/moby/buildkit?status.svg)](https://godoc.org/github.com/moby/buildkit/client/llb)  [![Build Status](https://github.com/moby/buildkit/workflows/build/badge.svg)](https://github.com/moby/buildkit/actions?query=workflow%3Abuild)  [![Go Report Card](https://goreportcard.com/badge/github.com/moby/buildkit)](https://goreportcard.com/report/github.com/moby/buildkit)  [![codecov](https://codecov.io/gh/moby/buildkit/branch/master/graph/badge.svg)](https://codecov.io/gh/moby/buildkit)

Herramienta ideal para la creacion de cargas utilies en cuestion de segundos, elige entre dos opciones metasploit y netcat.

![Un plan de marketing es un documento o plano que contiene las (1)](https://user-images.githubusercontent.com/69093629/107881169-6d945000-6ee3-11eb-8a7b-cfb6478a913b.gif)

- **INTERFAZ: Grafica**
- **IMPORTANTE: Herramienta creada con fines educativos y eticos, no me hago responsable del 
mal uso que se le de ⚠️**
- **HERRAMIENTA: Automatizada**

## Pre-requisitos 📋
**Instalar metasploit**
```
sudo apt-get update
``` 
``` 
sudo apt install curl
``` 
``` 
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
``` 
``` 
./msfinstall
``` 
**Instalar netcat**
``` 
sudo apt-get install Netcat
```  
## Construido con 🛠️

* [Metasploit](https://nmap.org/) 
* [netcat](https://www.exploit-db.com/) 

## Autor ✒️

**WackyHacker** - *Todo el proyecto* - [WEIK](https://github.com/WackyHacker)
## Licencia 📄

Este proyecto esta bajo Licencia - mira el archivo [LICENSE](https://github.com/WackyHacker/ShellWon/blob/main/LICENSE) para mas detalles

## ¿Cómo funciona?

Antes de todo se debe ejecutar siendo usuario root, de lo contrario no se iniciara, una vez ejecutado correctamente...

![Captura de pantalla (77)](https://user-images.githubusercontent.com/69093629/107892497-cc7ab900-6f25-11eb-9c63-621df864dca4.png)

Una vez la herramienta iniciada elegimos la opción a utilizar, si elegimos la opción numero uno, nos dice que si queremos clonar el repositorio de la herramienta que crea las cargas útiles en Metasploit, si escribimos que si, nos la clonara en la ruta que estemos ahora mismo de lo contrario si ponemos que no, no nos la clonara.

![Captura de pantalla (78)](https://user-images.githubusercontent.com/69093629/107892510-e2887980-6f25-11eb-9458-4fa4f3f97c6a.png)

Si elegimos la opción numero dos al principio hos creara una carpeta que se llamara Target2, en la cual guardara todas vuestras cargar útiles, después os pedirá que digitéis el payload que utilizareis para vuestra carga útil.

![Captura de pantalla (79)](https://user-images.githubusercontent.com/69093629/107892601-8a05ac00-6f26-11eb-8cdf-e2589c973fd2.png)

"Importante: si el payload que utilizas no es compatible con nc no funcionara"" 

![Captura de pantalla (80)](https://user-images.githubusercontent.com/69093629/107892627-ba4d4a80-6f26-11eb-8bd4-095d81759e3d.png)

Una vez todos los parametros introducidos correctamente se os empezara a crear vuestra carga util en cuestion de segundos.

Dejame una ★ si te ha servido !!! 
