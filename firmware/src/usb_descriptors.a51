;;;  
;;; Code from: USRP - Universal Software Radio Peripheral (GNU Radio) 
;;;  
;;; Initial modifications by: 
;;;  
;;; Stephan Esterhuizen, Aerospace Engineering Sciences 
;;; University of Colorado at Boulder 
;;; Boulder CO, USA 
;;;  
;;; Further modifications for use with the SiGe USB module to accompany 
;;; the textbook: "A Software-Defined GPS and Galileo Receiver: A 
;;; Single-Frequency Approach" by Kai Borre, Dennis Akos, et.al. by: 
;;;  
;;; Marcus Junered, GNSS Research Group 
;;; Lulea University of Technology 
;;; Lulea, Sweden  
;;; junered@ltu.se 
;;;  
;;; --------------------------------------------------------------------- 
;;;  
;;; GN3S - GNSS IF Streamer for Cypress FX2LP 
;;; Copyright (C) 2006 Marcus Junered 
;;;
;;; gnMAX2769 - Streamer modified for Maxim MAX2769 chip 
;;; Wojciech Kazubski 2019
;;;  
;;; This program is free software; you can redistribute it and/or modify 
;;; it under the terms of the GNU General Public License as published by 
;;; the Free Software Foundation; either version 2 of the License, or 
;;; (at your option) any later version. 
;;;  
;;; This program is distributed in the hope that it will be useful, 
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of 
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
;;; GNU General Public License for more details. 
;;;  
;;; You should have received a copy of the GNU General Public License 
;;; along with this program; if not, write to the Free Software 
;;; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
;;;  
 
 
;;; USB Descriptor table for the USRP 
;;;  
;;; We're a high-speed only device (480 Mb/sec) with 1 configuration 
;;; and 3 interfaces.   
;;;  
;;;	interface 0:	command and status (ep0 COMMAND) 
;;;	interface 1:	Transmit path (ep2 OUT BULK) 
;;;	interface 2:	Receive path (ep6 IN BULK) 
 
	.module usb_descriptors 
	 
	VID_FREE	 = 0x1781	; GN3S Project
	PID_USRP	 = 0x0B3C	; CU AAU SE4120L-EK3
	;;VID_FREE	 = 0x16C0	; GN3S Modified driver Project
	;;PID_USRP	 = 0x072F	; CU AAU SE4120L-EK3
	;; We distinguish configured from unconfigured USRPs using the Device ID. 
	;; If the MSB of the DID is 0, the device is unconfigured. 
	;; The LSB of the DID is reserved for hardware revs. 
	 
	DID_USRP1	 = 0x0102	; Device ID (bcd) 
 
	 
	DSCR_DEVICE	 =   1	; Descriptor type: Device 
	DSCR_CONFIG	 =   2	; Descriptor type: Configuration 
	DSCR_STRING	 =   3	; Descriptor type: String 
	DSCR_INTRFC	 =   4	; Descriptor type: Interface 
	DSCR_ENDPNT	 =   5	; Descriptor type: Endpoint 
	DSCR_DEVQUAL 	 =   6	; Descriptor type: Device Qualifier 
	 
	DSCR_DEVICE_LEN	 =  18 
	DSCR_CONFIG_LEN  =   9 
	DSCR_INTRFC_LEN  =   9 
	DSCR_ENDPNT_LEN  =   7 
	DSCR_DEVQUAL_LEN =  10 
	 
	ET_CONTROL	 =   0	; Endpoint type: Control 
	ET_ISO		 =   1	; Endpoint type: Isochronous 
	ET_BULK		 =   2	; Endpoint type: Bulk 
	ET_INT		 =   3	; Endpoint type: Interrupt 
	 
	 
	;; configuration attributes 
	bmSELF_POWERED	=	1 << 6 
 
;;; -------------------------------------------------------- 
;;;	external ram data 
;;;-------------------------------------------------------- 
	 
	.area USBDESCSEG    (XDATA) 
	 
;;; ---------------------------------------------------------------- 
;;; descriptors used when operating at high speed (480Mb/sec) 
;;; ---------------------------------------------------------------- 
	 
	.even	; descriptors must be 2-byte aligned for SUDPTR{H,L} to work 
 
	;; The .even directive isn't really honored by the linker.  Bummer! 
	;; (There's no way to specify an alignment requirement for a given area, 
	;; hence when they're concatenated together, even doesn't work.) 
	;;  
	;; We work around this by telling the linker to put USBDESCSEG 
	;; at 0xE000 absolute.  This means that the maximimum length of this 
	;; segment is 480 bytes, leaving room for the two hash slots  
	;; at 0xE1EO to 0xE1FF.   
	;;  
	;; As of July 7, 2004, this segment is 326 bytes long 
	 
_high_speed_device_descr:: 
	.db	DSCR_DEVICE_LEN 
	.db	DSCR_DEVICE 
	.db	<0x0200		; Specification version (LSB) 
	.db	>0x0200		; Specification version (MSB) 
	.db	0xff		; device class (vendor specific) 
	.db	0xff		; device subclass (vendor specific) 
	.db	0xff		; device protocol (vendor specific) 
	.db	64		; bMaxPacketSize0 for endpoint 0 
	.db	<VID_FREE	; idVendor 
	.db	>VID_FREE	; idVendor 
	.db	<PID_USRP	; idProduct 
	.db	>PID_USRP	; idProduct 
	.db	<DID_USRP1	; bcdDevice 
	.db	>DID_USRP1	; bcdDevice 
	.db	SI_VENDOR	; iManufacturer (string index) 
	.db	SI_PRODUCT	; iProduct (string index) 
	.db	SI_SERIAL	; iSerial number (string index) 
	.db	1		; bNumConfigurations 
	 
;;; describes the other speed (12Mb/sec) 
	.even 
_high_speed_devqual_descr:: 
	.db	DSCR_DEVQUAL_LEN 
	.db	DSCR_DEVQUAL 
	.db	<0x0200		; bcdUSB (LSB) 
	.db	>0x0200		; bcdUSB (MSB) 
	.db	0xff		; bDeviceClass 
	.db	0xff		; bDeviceSubClass 
	.db	0xff		; bDeviceProtocol 
	.db	64		; bMaxPacketSize0 
	.db	1		; bNumConfigurations (one config at 12Mb/sec) 
	.db	0		; bReserved 
	 
	.even 
_high_speed_config_descr::	 
	.db	DSCR_CONFIG_LEN 
	.db	DSCR_CONFIG 
	.db	<(_high_speed_config_descr_end - _high_speed_config_descr) ; LSB 
	.db	>(_high_speed_config_descr_end - _high_speed_config_descr) ; MSB 
	.db	3		; bNumInterfaces 
	.db	1		; bConfigurationValue 
	.db	0		; iConfiguration 
	.db	0x80		; bmAttributes 
	.db	40		; bMaxPower 
 
	;; interface descriptor 0 (command & status, ep0 COMMAND) 
	 
	.db	DSCR_INTRFC_LEN 
	.db	DSCR_INTRFC 
	.db	0		; bInterfaceNumber (zero based) 
	.db	0		; bAlternateSetting 
	.db	0		; bNumEndpoints 
	.db	0xff		; bInterfaceClass (vendor specific) 
	.db	0xff		; bInterfaceSubClass (vendor specific) 
	.db	0xff		; bInterfaceProtocol (vendor specific) 
	.db	SI_COMMAND_AND_STATUS	; iInterface (description) 
 
	;; interface descriptor 1 (transmit path, ep2 OUT BULK) 
	 
	.db	DSCR_INTRFC_LEN 
	.db	DSCR_INTRFC 
	.db	1		; bInterfaceNumber (zero based) 
	.db	0		; bAlternateSetting 
	.db	1		; bNumEndpoints 
	.db	0xff		; bInterfaceClass (vendor specific) 
	.db	0xff		; bInterfaceSubClass (vendor specific) 
	.db	0xff		; bInterfaceProtocol (vendor specific) 
	.db	SI_TX_PATH	; iInterface (description) 
 
	;; interface 1's end point 
 
	.db	DSCR_ENDPNT_LEN 
	.db	DSCR_ENDPNT 
	.db	0x02		; bEndpointAddress (ep 2 OUT) 
	.db	ET_BULK		; bmAttributes 
	.db	<512		; wMaxPacketSize (LSB) 
	.db	>512		; wMaxPacketSize (MSB) 
	.db	0		; bInterval (iso only) 
 
	;; interface descriptor 2 (receive path, ep6 IN BULK) 
	 
	.db	DSCR_INTRFC_LEN 
	.db	DSCR_INTRFC 
	.db	2		; bInterfaceNumber (zero based) 
	.db	0		; bAlternateSetting 
	.db	1		; bNumEndpoints 
	.db	0xff		; bInterfaceClass (vendor specific) 
	.db	0xff		; bInterfaceSubClass (vendor specific) 
	.db	0xff		; bInterfaceProtocol (vendor specific) 
	.db	SI_RX_PATH	; iInterface (description) 
 
	;; interface 2's end point 
 
	.db	DSCR_ENDPNT_LEN 
	.db	DSCR_ENDPNT 
	.db	0x86		; bEndpointAddress (ep 6 IN) 
	.db	ET_BULK		; bmAttributes 
	.db	<512		; wMaxPacketSize (LSB) 
	.db	>512		; wMaxPacketSize (MSB) 
	.db	0		; bInterval (iso only) 
 
_high_speed_config_descr_end:		 
 
;;; ---------------------------------------------------------------- 
;;; descriptors used when operating at full speed (12Mb/sec) 
;;; ---------------------------------------------------------------- 
 
	.even 
_full_speed_device_descr::	 
	.db	DSCR_DEVICE_LEN 
	.db	DSCR_DEVICE 
	.db	<0x0200		; Specification version (LSB) 
	.db	>0x0200		; Specification version (MSB) 
	.db	0xff		; device class (vendor specific) 
	.db	0xff		; device subclass (vendor specific) 
	.db	0xff		; device protocol (vendor specific) 
	.db	64		; bMaxPacketSize0 for endpoint 0 
	.db	<VID_FREE	; idVendor 
	.db	>VID_FREE	; idVendor 
	.db	<PID_USRP	; idProduct 
	.db	>PID_USRP	; idProduct 
	.db	<DID_USRP1	; bcdDevice 
	.db	>DID_USRP1	; bcdDevice 
	.db	SI_VENDOR	; iManufacturer (string index) 
	.db	SI_PRODUCT	; iProduct (string index) 
	.db	SI_NONE		; iSerial number (None) 
	.db	1		; bNumConfigurations 
	 
	 
;;; describes the other speed (480Mb/sec) 
	.even 
_full_speed_devqual_descr:: 
	.db	DSCR_DEVQUAL_LEN 
	.db	DSCR_DEVQUAL 
	.db	<0x0200		; bcdUSB 
	.db	>0x0200		; bcdUSB 
	.db	0xff		; bDeviceClass 
	.db	0xff		; bDeviceSubClass 
	.db	0xff		; bDeviceProtocol 
	.db	64		; bMaxPacketSize0 
	.db	1		; bNumConfigurations (one config at 480Mb/sec) 
	.db	0		; bReserved 
	 
	.even 
_full_speed_config_descr::	 
	.db	DSCR_CONFIG_LEN 
	.db	DSCR_CONFIG 
	.db	<(_full_speed_config_descr_end - _full_speed_config_descr) ; LSB 
	.db	>(_full_speed_config_descr_end - _full_speed_config_descr) ; MSB 
	.db	1		; bNumInterfaces 
	.db	1		; bConfigurationValue 
	.db	0		; iConfiguration 
	.db	0x80		; bmAttributes 
	.db	40		; bMaxPower 
 
	;; interface descriptor 0 (command & status, ep0 COMMAND) 
	 
	.db	DSCR_INTRFC_LEN 
	.db	DSCR_INTRFC 
	.db	0		; bInterfaceNumber (zero based) 
	.db	0		; bAlternateSetting 
	.db	0		; bNumEndpoints 
	.db	0xff		; bInterfaceClass (vendor specific) 
	.db	0xff		; bInterfaceSubClass (vendor specific) 
	.db	0xff		; bInterfaceProtocol (vendor specific) 
	.db	SI_COMMAND_AND_STATUS	; iInterface (description) 
	 
_full_speed_config_descr_end:	 
	 
;;; ---------------------------------------------------------------- 
;;;			string descriptors 
;;; ---------------------------------------------------------------- 
 
_nstring_descriptors:: 
	.db	(_string_descriptors_end - _string_descriptors) / 2 
 
_string_descriptors:: 
	.db	<str0, >str0 
	.db	<str1, >str1 
	.db	<str2, >str2 
	.db	<str3, >str3 
	.db	<str4, >str4 
	.db	<str5, >str5 
	.db	<str6, >str6 
_string_descriptors_end: 
 
	SI_NONE = 0 
	;; str0 contains the language ID's. 
	.even 
str0:	.db	str0_end - str0 
	.db	DSCR_STRING 
	.db	0 
	.db	0 
	.db	<0x0409		; magic code for US English (LSB) 
	.db	>0x0409		; magic code for US English (MSB) 
str0_end: 
 
	SI_SERIAL = 1 
	.even 
_serial_number_descriptor:: 
str1:	.db	str1_end - str1 
	.db	DSCR_STRING 
	.db	'0, 0 
	.db	'0, 0 
	.db	'0, 0 
	.db	'0, 0 
	.db	'0, 0 
	.db	'0, 0 
str1_end: 

	SI_PRODUCT = 2 
	.even 
str2:	.db	str2_end - str2 
	.db	DSCR_STRING 
	.db	'M, 0 
	.db	'A, 0 
	.db	'X, 0 
	.db	'2, 0 
	.db	'7, 0 
	.db	'6, 0 
	.db	'9, 0 
	.db	' , 0 
	.db	'G, 0 
	.db	'N, 0 
	.db	'S, 0 
	.db	'S, 0 
	.db	' , 0 
	.db	'F, 0 
	.db	'r, 0 
	.db	'o, 0 
	.db	'n, 0 
	.db	't, 0 
	.db	'e, 0 
	.db	'n, 0 
	.db	'd, 0 
str2_end: 
 
	SI_VENDOR = 3 
	.even 
str3:	.db	str3_end - str3 
	.db	DSCR_STRING 
	.db	'G, 0		; 16-bit unicode 
	.db	'N, 0 
	.db	'M, 0 
	.db	'A, 0 
	.db	'X, 0 
	.db	' , 0 
	.db	'P, 0 
	.db	'r, 0 
	.db	'o, 0 
	.db	'j, 0 
	.db	'e, 0 
	.db	'c, 0 
	.db	't, 0 
str3_end: 
 
	SI_COMMAND_AND_STATUS = 4 
	.even 
str4:	.db	str4_end - str4 
	.db	DSCR_STRING 
	.db	'C, 0 
	.db	'o, 0 
	.db	'm, 0 
	.db	'm, 0 
	.db	'a, 0 
	.db	'n, 0 
	.db	'd, 0 
	.db	' , 0 
	.db	'&, 0 
	.db	' , 0 
	.db	'S, 0 
	.db	't, 0 
	.db	'a, 0 
	.db	't, 0 
	.db	'u, 0 
	.db	's, 0 
str4_end: 
 
	SI_TX_PATH = 5 
	.even 
str5:	.db	str5_end - str5 
	.db	DSCR_STRING 
	.db	'T, 0 
	.db	'r, 0 
	.db	'a, 0 
	.db	'n, 0 
	.db	's, 0 
	.db	'm, 0 
	.db	'i, 0 
	.db	't, 0 
	.db	' , 0 
	.db	'P, 0 
	.db	'a, 0 
	.db	't, 0 
	.db	'h, 0 
str5_end: 
 
	SI_RX_PATH = 6 
	.even 
str6:	.db	str6_end - str6 
	.db	DSCR_STRING 
	.db	'R, 0 
	.db	'e, 0 
	.db	'c, 0 
	.db	'e, 0 
	.db	'i, 0 
	.db	'v, 0 
	.db	'e, 0 
	.db	' , 0 
	.db	'P, 0 
	.db	'a, 0 
	.db	't, 0 
	.db	'h, 0 
str6_end: 
 
 
