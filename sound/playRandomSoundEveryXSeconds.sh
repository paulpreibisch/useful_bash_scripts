#!/bin/bash
#
# randomSound.sh
# ----------------------
# this script will play a random sound from a specified folder
#
# Setup
# ----------------------------
# 1) Create a folder YOUR_FOLDER in your home folder (call YOUR_FOLDER whatever you want)
# 2) Create a subfolder in YOUR_FOLDER called "selected"
# 3) Change the variables below
#

# Variable 1: Directory Containing sounds
# ----------------------------
DIR="~/YOUR_FOLDER"

# Don't change anything below this line unless you know what you are doing
# ----------------------------


# Command to Select a random wav file from directory
# ----------------------------
WAV=$(ls $DIR/*.wav | shuf -n1)

# Command to set selected sound
# ----------------------------
cp $WAV ~/YOUR_FOLDER/selected/currentSound.wav
aplay ~/YOUR_FOLDER/selected/currentSound.wav &
