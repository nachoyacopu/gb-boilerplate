@echo off
set name=main

echo Assembling...
cd src/
rgbasm -o ../build/%name%.o %name%.asm

echo Linking...
cd ../build
rgblink -o %name%.gb -m %name%.map -n %name%.sym %name%.o

echo Fixing...
rgbfix -v -p 0x00 %name%.gb

echo Success!

