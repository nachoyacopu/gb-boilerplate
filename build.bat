echo Building ROM...
cd src/
rgbasm -o ../build/main.o main.asm
cd ../build
rgblink -o main.gb main.o
rgbfix -v -p 0 main.gb
echo Success!