#!/bin/bash
musl-gcc -Wall -Wextra -Werror -pedantic -static src/main.c -o micronium-linux
strip micronium-linux