#!/bin/bash

sudo apt-get update
apt-get install linux-headers-$(uname -r | sed 's.[^-]*-[^-]*-,,'<) broadcom-sta-dkms -y

modprobe -r b44 b43 b43legacy ssb brcmsmac

modprobe wl

iwconfig

echo 1 | sudo tee /proc/brcm_monitoro


