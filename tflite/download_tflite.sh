#!/bin/bash

# create dir for models
mkdir models/

# Download models
wget -O models/tflite.zip https://www.dropbox.com/sh/222it09h58kcbkk/AABQtYq3ITuZdnC8ApHGkToEa?dl=0

# unzip the model
cd models/
mkdir tflite/
mv tflite.zip tflite/
cd tflite/
unzip tflite.zip
cd ../../

