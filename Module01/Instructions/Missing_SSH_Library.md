
#### Aditional, on newer versiones of Ubuntu while running Aiken you may face an error, based on OpenSSH library 1.1.0, best recomendation is to build it independently and make a reference so Aiken can find it and use it.  You may follow this guidelines (tested on Ubuntun 23.10 and 24.04 LTS server)

```bash
mkdir $HOME/opt && cd $HOME/opt
wget https://www.openssl.org/source/openssl-1.1.1o.tar.gz
tar -zxvf openssl-1.1.1o.tar.gz
cd openssl-1.1.1o
./config && make && make test
mkdir $HOME/opt/lib
mv $HOME/opt/openssl-1.1.1o/libcrypto.so.1.1 $HOME/opt/lib/
mv $HOME/opt/openssl-1.1.1o/libssl.so.1.1 $HOME/opt/lib/
export LD_LIBRARY_PATH=$HOME/opt/lib:$LD_LIBRARY_PATH
```
