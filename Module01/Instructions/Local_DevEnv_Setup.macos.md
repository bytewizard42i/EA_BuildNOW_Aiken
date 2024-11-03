# Aiken Developer Environment with Cardano node installation walkthru.

## Aiken
  
1. Install and test Aiken
   1.1. Install aikup
```bash
curl --proto '=https' --tlsv1.2 -LsSf https://install.aiken-lang.org | sh
```

  1.2. Use aikup to install aiken
```bash
aikup install
```   

  1.3. Test aiken is working
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

2. Install Nix
  2.1 Installation
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
#Accept default values to all questions.
  2.2 Defined trusted users
```bash
sudo vim /etc/nix/nix.conf
```

First find the current user name
```bash
whoami
```

Add the following line in the `nix.conf` file

```
trusted-users = root <username returned by whoami>
```

  2.3 launch daemon
```bash
sudo launchctl stop org.nixos.nix-daemon
sudo launchctl start org.nixos.nix-daemon
```
  2.4 test nix
```bash
nix --version
```

3. Install and Run Cardano-Ez-Installer
  1.1. Clone Cardano EZ-installer (https://github.com/iburzynski/cardano-ez-installer.git)
```bash
#Recommended folder ~/cardano-src
git clone https://github.com/iburzynski/cardano-ez-installer.git
```

  3.2. Edit the .env file on the cardano ez-installer folder
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

  3.3. Execute ./install.sh
```bash
cd cardano-ez-installer
chmod +x install.sh
./install.sh
```
  The installer is gonna take some time.
  When ask if you want to install Aiken and Ogmios, to both answer no.

  3.4. Test the node. 
```bash
cardano-cli --version
cardano-node --version
```

You are ready!

Opcional:  Iniciar el nodo en red de pruebas para estar sincronizado a la hora de las clases

4. Start the preview network and happy coding!
```bash
preview-node
```
