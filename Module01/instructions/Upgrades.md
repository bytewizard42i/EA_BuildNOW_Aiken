#### To upgrade your node version

1. Edit the .env file on the cardano ez-installer folder
    - Config node version 9.1.1 (@20240907)
    
```bash
export AIKEN_RELEASE="1.0.21-alpha" # Replace with newer version and re-run the script to update your installation
export NODE_RELEASE="9.1.1" # Replace with newer version and re-run the script to update your installation
export OGMIOS_RELEASE="6.0.0-rc2" # Replace with newer version and re-run the script to update your installation
export CARDANO_SRC_PATH="$HOME/cardano-src" # Where cardano-node source files will be saved
export CARDANO_PATH="$HOME/cardano-data" # Where node database and config files will be saved
```  

  6.3. Execute ./install.sh
```bash
cd cardano-ez-installer
./install.sh
```

##  When ask if you want to install Aiken and Ogmios, to both answer *NO*.


2. Update Aiken
    - Open a terminal
    - Clean aiken installation
```bash
aikup clean
aikup install
```