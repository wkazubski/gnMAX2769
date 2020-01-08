# gnMAX2769

## Description

This project contains the hardware and firmware for the USB dongle for receiving GNSS signals in L1 band. The dongle contains a Maxim MAX2769ETI+ RF chip and a Cypress CY7C68013A USB-2.0 interface chip. The dongle can be tuned between 1.55GHz and 1.61GHz, so it can receive Glonass and Beidou signals in addition to GPS and Galileo. IF bandwidth can be adjusted in four steps to match signal bandwidth.

The dongle has two RF inputs. One of them (ANT1) is optimised for passive antennas. In this case the dongle has to be installed close to the antenna to avoid cable losses. The second input is optimised for active antenna and a switchable bias of 3.3V 20mA is provided.

The output signal is 2x2bit IQ data stream with sample rate 16.368 megasamples per sec (or 16.368MHz). The input frequency is converted to 4.092MHz IF frequency or zero IF (AC coupled).

## Schematic

The schematic was created in gschem (gEDA-gaf package, http://www.geda-project.org/) using non-standard (smaller) symbols. The symbols required to draw the scematic are provided in the "symbols" subdirectory. The schematic is also available as a PDF document.

## PCB

The PCB was created with a pcb program version 4.2.0 (http://pcb.geda-project.org/). Some footprints used are standard, some are custom created or borrowed from the gedasymbols repository (http://www.gedasymbols.org). The non-standard footprints used are available in the "footprints" subdirectory, The board is designed as double-sided with minimum trace width of 0.2mm (~8 mils). The minimum drill size is 0.5mm. Tre board was designed to fit Hammond 1551USB3 enclosure.

## BOM

The bill of materials is available as a tab separated text file. Most of components for prototype boards were obtained from the Polish supplier TME (http://www.tme.eu), but other distributors should have the same or euivalent items.
The input RF sockets can be either SMA or MCX. If only active or only passive antenna is to be used, only one connector can be installed.

## Firmware

The firmware for CY7C68013 internal MCU is written in C and assembler languages. It is based on earlier projects for GN3S dongles. See README_firmware for detailed instruction.