#!/bin/bash

# Creating keys and accounts (enterprise and staking addresses)

# Create keys
echo -e "\e[38;5;214mOk John, you will now be Creating Cryptographic Keys\e[0m"

mkdir -p ../Keys_and_Addresses_with_CLI/new_user_keys_folder

# Prompt user to enter file names for the enterprise verification and signing keys
read -p "Enter the file name for the Enterprise Verification Key (add .vkey to the name): " enterprise_vkey
read -p "Enter the file name for the Enterprise Signing Key (without extension): " enterprise_skey

# Create enterprise keys
cardano-cli address key-gen \
--verification-key-file ../Keys_and_Addresses_with_CLI/new_user_keys_folder/$enterprise_vkey.vkey \
--signing-key-file ../Keys_and_Addresses_with_CLI/new_user_keys_folder/$enterprise_skey.skey

# Prompt user to enter file names for the staking verification and signing keys
read -p "Enter the file name for the Staking Verification Key (without extension): " staking_vkey
read -p "Enter the file name for the Staking Signing Key (without extension): " staking_skey

# Create staking keys
cardano-cli stake-address key-gen \
--verification-key-file ../Keys_and_Addresses_with_CLI/new_user_keys_folder/$staking_vkey.vkey \
--signing-key-file ../Keys_and_Addresses_with_CLI/new_user_keys_folder/$staking_skey.skey

# Create addresses
echo "Creating addresses"
read -p "Enter the file name for the Payment Address (without extension): " payment_addr

cardano-cli address build \
--payment-verification-key-file ../Keys_and_Addresses_with_CLI/new_user_keys_folder/$enterprise_vkey.vkey \
--stake-verification-key-file ../Keys_and_Addresses_with_CLI/new_user_keys_folder/$staking_vkey.vkey \
--out-file ../Keys_and_Addresses_with_CLI/new_user_keys_folder/$payment_addr.addr \
--testnet-magic 2

echo "Keys and address created successfully in 'new_user_keys_folder'."
