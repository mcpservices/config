#!/bin/bash

# Set the current directory as the working directory
cd "$(dirname "$0")"

# Source file paths
ap_file="ap"
hostapd_conf_file="hostapd.conf"

# Destination directories
interfaces_dir="/root/"
hostapd_dir="/root/"

# Copy ap file to /etc/network/interfaces/
cp "$ap_file" "$interfaces_dir"

# Copy hostapd.conf file to /etc/hostapd/
cp "$hostapd_conf_file" "$hostapd_dir"