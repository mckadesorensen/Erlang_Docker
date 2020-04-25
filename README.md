# Erlang_Docker
Contains a Docker file with all the needed packages to install and run Erlang 

## Docker
While in Erlang_Docker root directory run:
```
make image
```
Next run:
```
PROJECT_ROOTDIR=$HOME/pathh_to_Erlang_Docker make container-shell
```

## Setting up Erlang in Docker
Once in the Docker contianer run the following commands in order:
```
cd opt_src_22.3
./configure
make
make install
```
