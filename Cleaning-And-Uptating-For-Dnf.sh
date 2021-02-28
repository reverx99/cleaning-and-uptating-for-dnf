#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root!"
    exit
fi


echo "Unnecessary packages and cache packages are removing..."

dnf autoremove

dnf clean all

echo "Unnecessary packages and cache packages are removed!"

echo "Update the distribution..."

dnf distro-sync

echo "dnf update and dnf upgrade"

dnf update

dnf upgrade

echo "dnf update and dnf upgrade"