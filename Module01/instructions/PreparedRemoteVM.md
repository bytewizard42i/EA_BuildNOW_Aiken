1. Descargar e instalar VMware Workstation para Windows o Linux, o VMware Fusion para Mac.
2. Descargar la imagen del enlace provisto.
3. Abrir VMware Workstation 
   3.1. Abrir una máquina Virtual (Open a Virtual Machine) - El archivo *EA_Dev_Env.vmx*
   3.2. Iniciar la maquina virtual, si sale el letrero sobre si la maquina ha sido movida o copiad, responder que ha sido copiada.
   3.3. Iniciar sesion con:
      -  usuario:       developer
      -  contraseña:    123456
   3.4. Ejecutar el comando
   ```bash
   ifconfig
   ```

     - Tomar nota del número IP del equipo
     - Ejemplo: inet *192.168.125.128*
   
   3.5. Iniciar el nodo:
   ```bash
   preview-node
   ```
4. Guardar llave privada
   4.1. Guardar la info de la llave privada siguiente:
 ```bash
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABDZC+R1pS
ByWj/n1/GJ/jVZAAAAGAAAAAEAAAAzAAAAC3NzaC1lZDI1NTE5AAAAIG+JU1IUfbeLrkX3
8Ey3sF++0lV+/aLRoOkU4XVerTA+AAAAoHSFScYN9gPVXN0mjP43HUubZI3lW1C9oolZWv
w58Js3wqK22M8B0frmtp1D+PQd1MqRnm1TJOU3mXW83eLt0oLTsMwPa2h8nnuu0d6zaPjf
7Uiz8br0olnvrUnvw5uSM7rGYf1XHw0H23kDPeBpWehLv3uKXXbwmGXFEB1JchlE9wmJ7O
08ghae/LcJ5+LYlta0shO80sNDLYuFcdB/DgI=
-----END OPENSSH PRIVATE KEY-----
```
*Importante: Sin espacios, ni saltos de linea al final.
*Tomar nota de la dirección completa de la carpeta donde fue guardado el archivo de la llave privada.


## Windows
1. Instalar e iniciar VisualStudio Code.
2. Instalar el Remote Development plugin.
3. Adicionar usuario a ssh config   
    - En una linea de comandos o en la terminald de una ventana de VsCode escribir
    ```bash
    code %HOMEPATH%/.shh
    ```
    - Abrir o crear el archivo *config* (sin extension)
    - Introducir estas lineas en el archivo *config*
 ```bash
 Host EA_Dev_Env
  HostName *Aqui se coloca el IP de la maquina virtual*
  IdentityFile *Aqui colocar la dirección completa de la llave privada*
  User developer
 ```

4. En la equina inferior izquierda de VScode, presionar el icono ><
   4.1. Escoger de la lista el EA_Dev_Env
   4.2. Introducir contraseña para developer: *123456*


   5.1. Responder:
    - Linux
    - Continue
    - 