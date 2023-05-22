#!/bin/bash

# Set the current directory as the working directory
cd "$(dirname "$0")"

# Source file paths
ap_file="ap"
hostapd_conf_file="hostapd.conf"
isc_config="isc-dhcp-server"
dhcp_config="dhcpd.conf"
#inter_config="70-persistent-net.rules"


# Destination directories
interfaces_dir="/etc/network/interfaces.d/"
hostapd_dir="/etc/hostapd/"     
isc_dir="/etc/default/"
dhcp_dir="/etc/dhcp/"
#inter_dir="/etc/udev/rules.d/"

# Copy ap file to /etc/network/interfaces/
cp "$ap_file" "$interfaces_dir"

# Copy hostapd.conf file to /etc/hostapd/
cp "$hostapd_conf_file" "$hostapd_dir"

#copy isc
cp "$isc_config" "$isc_dir"

#copy dhcp
cp "$dhcp_config" "$dhcp_dir"

#cp "$inter_config" "$inter_dir"
