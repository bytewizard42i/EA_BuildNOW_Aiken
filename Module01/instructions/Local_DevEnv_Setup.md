# Aiken Developer Environment with Cardano node installation walkthru.

## The Virtual Machine

1. Create a new VM with your favorite Virtualization tool (this test was done with VMware).
   - Default Ubuntu 24.04 disk config
   - Increase of size of VM before if necesary
   -  Activate Super User (root) mode
```bash
  sudo su
```
   - Assign all storage space to logical device
```bash
  cfdisk
  pvresize /dev/sda3
```
   - Allocate all the free space to the Volume Group
```bash
  vgdisplay #checking
  lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
  lvdisplay #checking
  vgdisplay #checking
  df -h     #checking
  resize2fs /dev/mapper/ubuntu-–vg-ubuntu-–lv
  df -h     #checking
```
2. Update Ubuntu repositories
```bash
sudo apt-get update && sudo apt-get upgrade
```

3. Install the follosing:
   - OpenSSH
   - Git
   - Wget
   - Ca-certificates
   - Nano (or the text editor of your preference)
```bash
sudo apt-get install openssh-server git wget ca-certificates nano
```
###### @202408 is recommended to install aiken BEFORE launching Cardano Ez-Installer and selecting No when prompted to install Aiken .

## Aiken
  
4. Install and test Aiken
   4.1. Install aikup
```bash
curl --proto '=https' --tlsv1.2 -LsSf https://install.aiken-lang.org | sh
```

  4.2. Use aikup to install aiken
```bash
aikup install
```   

  4.3. Test aiken is working
```bash
aiken --version
#In the Dev folder (or any folder of your preference), clone and compile the example code (Auction contract).
git clone https://github.com/EmurgoFaculty/Aiken_Auction.git
cd Aiken_Auction
cd auction
aiken check
aiken build
#Aiken should check and compile without errors. 
```

## The Cardano node

5. Install Nix
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
#Accept default values to all questions.

#test nix
nix --version
```

6. Install and Run Cardano-Ez-Installer
  6.1. Clone Cardano EZ-installer (https://github.com/iburzynski/cardano-ez-installer.git)
```bash
#Recommended folder ~/cardano-src
git clone https://github.com/iburzynski/cardano-ez-installer.git
```

  6.2. Edit the .env file on the cardano ez-installer folder
    - Config node version 9.1.0 (@20240816)
    - Optional: Choose your prefered source and data folders
    - Examples: cardano-src and cardano-data
```bash
export AIKEN_RELEASE="1.0.21-alpha" # Replace with newer version and re-run the script to update your installation
export NODE_RELEASE="9.1.0" # Replace with newer version and re-run the script to update your installation
export OGMIOS_RELEASE="6.0.0-rc2" # Replace with newer version and re-run the script to update your installation
export CARDANO_SRC_PATH="$HOME/cardano-src" # Where cardano-node source files will be saved
export CARDANO_PATH="$HOME/cardano-data" # Where node database and config files will be saved
```  

  6.3. Execute ./install.sh
```bash
cd cardano-ez-installer
chmod +x install.sh
./install.sh
```
  The installer is gonna take some time.
  When ask if you want to install Aiken and Ogmios, to both answer no.

  6.4. Test the node. 
```bash
cardano-cli --version
cardano-node --version
```

You are ready!

Opcional:  Iniciar el nodo en red de pruebas para estar sincronizado a la hora de las clases

7. Start the preview network and happy coding!
```bash
preview-node
```
