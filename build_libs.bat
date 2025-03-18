mkdir libs
mkdir libs\debug
mkdir libs\release

copy lodepng\lodepng.cpp lodepng\lodepng.c

clang -c -g -gcodeview -o lodepng.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall lodepng\lodepng.c
move lodepng.lib libs\debug

clang -c -O3 -o lodepng.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall lodepng\lodepng.c
move lodepng.lib libs\release