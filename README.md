# ada-avr-test

## Required tools

Test repository to work with Ada on AVR microcontrollers.

In order to test this you need `gprbuild` in your path. A compiler
named `avr-gcc` with Ada support is also needed and has to be
available in your path. In order to have a complete correct
build-and-upload cycle, `avrdude` should also be installed.

## Usage

In order to build this example run

```
make flash_led.prog
```

This will build the test file and will generate an `.eep`, `.elf` and
`.hex` file. 

## Configuring the build script

The build script `Makefile` has some hardcoded parameters that need to
be changed depending on the target. Please, read the comments of the
file. You probably want to change:

- Compilation flags. Currently they are pretty useless: `-O0 -f -a -g
  -ggdb`
- Connected port for the board. Currently it sits at: `/dev/ttyACM0`
- Upload settings. Currently a baud rate of 115200 is used, since my
  board has the new bootloader. Your case may be different.

The `.hex` file will be uploaded directly to the connected Arduino
board if all the parameters are correctly configured.
