#!/bin/bash
for i in $( cat users.txt ); do
    useradd $i
    echo "user $i added successfully!"
    echo $i:$i"123" | chpasswd
    echo "Password for user $i changed successfully"
    sudo usermod -aG sudo $i
    sudo usermod -s /bin/zsh $i
done
