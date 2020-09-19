#!/bin/bash

sudo chown -R $USER:$USER ~/git/adelieos
cp ~/git/adelieos/releng/out/*.iso ~/
sudo rm -R ~/git/adelieos/releng
