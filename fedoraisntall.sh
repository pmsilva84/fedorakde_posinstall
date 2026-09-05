# bin/bash

# Autor: Pedro A
# Based on https://github.com/Diolinux/pop-os-postinstall/tree/main
#
# Como usar:
#   ./fedorainstall.sh

# URLs



# Funções

## Funções

dnf_update(){
    sudo dnf update -y
}

install_flatpaks(){
    echo "[INFO] - Installing flatpaks"

    flatpak install com.bitwarden.desktop -y
    flatpak install io.ente.auth -y
    flatpak install md.obsidian.Obsidian -y
    flatpak install com.rtosta.zapzap -y
}

install_rpm(){
    echo "[INFO] - Installing rpm packages"

    sudo dnf install gcc gcc-c++ -y
    sudo dnf install steam -y
}

extra_config(){

    mkdir /home/$USER/Code_Projects
    mkdir /home/$USER/Vídeos/'OBS Rec'

}