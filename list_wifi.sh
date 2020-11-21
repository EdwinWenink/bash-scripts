#!/bin/bash

# Scan for devices and list all wifi signals
nmcli device wifi rescan
nmcli device wifi list
