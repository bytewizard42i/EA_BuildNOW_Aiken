# Aiken Docker Developer Environment with Cardano node installation walkthru.

## Install Docker Desktop

1. Go to https://www.docker.com/products/docker-desktop/
 

2. Install VS-Code 
   1. Install the Remote Development plugin  or just the Dev Container plugin.


## Clone the course main repository (where this guide resides).
3. Git clone https://github.com/EmurgoFaculty/EA_BuildNOW_Aiken
    - Can be done on terminal (cmd).
```bash
Git clone https://github.com/EmurgoFaculty/EA_BuildNOW_Aiken
```

4. Open VS-code and open the project folder

5. You might get the message that offers several options, select *Clone in Volume*.

The first time it's gonna take some time downloading the docker image

6. VS code will open in the project folder, you can test the installation with the command
```bash
aiken --version
```