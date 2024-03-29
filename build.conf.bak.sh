################################################
### ---     Thinstation Build Config     --- ###
################################################
#
#
# This is Thinstation's basic setup file. In this file you decide which
# hardware, programs and features to be included in the Thinstation
# boot image generated by running "./build".
#
# You can customize/limit the possibilities in the thinstation.conf
# files later.
#
# Anything after a "#" is a comment. You activate "things" by removing
# the "#" and remove "things" by putting a "#" in front of them.
#
# First we define which modules to include. Modules are hardware
# drivers. NEVER include more than necessary - the more modules, the
# longer boot time.

################################################
### --- Modules to include in boot image --- ###
################################################

# Any modules may be added as "module" or "module_pkg".
# If defined as a "module", the driver is included in the boot image.
# If defined as a "module_pkg", the driver is added from outside the
# image, such as from a tftp server.  See note below for more details.
#
# Normally you should use "module".  Only use "module_pkg" if you want
# to dynamically load modules. 

# Note: If you create a module_pkg network driver, and decide to load it
#       from a tftp server, it won't work.  This is because the image
#       won't have a network driver to get the module_pkg in the first
#       place.

#!Hardware
#!!System
#!!!Misc Modules
module pcm           		# PCMCIA Cards
module serial           	# Serial Device Support
module acpi           		# Advanced Configuration and Power Interface support
#module pcspkr			# PC Speaker support

#!!!AGP Modules
module agpgart			# AGP bus module for use with AGP video cards
#module ali-agp          	# ALI chipset support
#module amd64-agp         	# AMD Opteron/Athlon64 on-CPU GART support
#module amd-k7-agp       	# AMD Irongate, 761, and 762 chipset support
#module ati-agp          	# ATI chipset support
#module efficeon-agp     	# Transmeta Efficeon support
#module intel-agp        	# Intel 440LX/BX/GX, I8xx and E7x05 chipset support
#module nvidia-agp       	# NVIDIA nForce/nForce2 chipset support
#module sis-agp          	# SiS chipset support
#module via-agp          	# VIA chipset support

#!!!PCMCIA/CardBus bridges
# Remember: Only include what you really need!
#module yenta_socket  		# CardBus card and (Yenta) bridge support (Very common)
#module i82365        		# Intel i82365 compatible ISA-bus bridge support
#module tcic          		# Databook TCIC host bridge support (old systems)


# --- Network card modules
# Did we forget to tell you to only include modules you require?
#!!Network

#!!!Ethernet 10-100 Mbit Modules
#module 3c501           	# 3c501 "EtherLink" support
#module 3c503           	# 3c503 "EtherLink II" support
#module 3c505           	# 3c505 "EtherLink Plus" support
#module 3c507           	# 3c507 "EtherLink 16" support
#module 3c509            	# 3c509/3c529 (MCA)/3c579 "EtherLink III" support
#module 3c515           	# 3c515 ISA "Fast EtherLink"
#module 3c59x            	# 3c590/3c900 series (592/595/597) "Vortex/Boomerang" support 
module 8139too          	# RealTek RTL-8139 PCI Fast Ethernet Adapter support. VERY
                       		#  common in no-name network cards. Covers also 8129.
#module 8139cp          	# RealTek RTL-8139 C+ PCI Fast Ethernet Adapter support
#module ac3200          	# Ansel Communications EISA 3200 support
#module amd8111e        	# AMD 8111 (new PCI lance) support
#module at1700          	# AT1700/1720 support
#module atl2			# Attansic L2. Atheros(R) L2 Ethernet Network Driver (v. 1.0.40.3)
#module b44             	# Broadcom 4400 ethernet support (v. 1.00g)
#module cs89x0          	# CS89x0 support
#module de4x5           	# Generic DECchip & DIGITAL EtherWORKS PCI/EISA
#module de2104x         	# Early DECchip Tulip (dc2104x) PCI support
#module depca           	# DEPCA, DE10x, DE200, DE201, DE202, DE422 support
#module dgrs            	# Digi Intl. RightSwitch SE-X support
#module dmfe            	# Davicom DM910x/DM980x support
#module hp100           	# HP 10/100VG PCLAN (ISA, EISA, PCI) support
#module e100            	# EtherExpressPro/100 support (e100, Alternate Intel driver)
#module e2100           	# Cabletron E21xx support
#module eepro            	# EtherExpressPro support/EtherExpress 10 (i82595) support
#module eepro100        	# EtherExpressPro/100 support (eepro100, original Becker driver)
#module eexpress        	# EtherExpress 16 support
#module epic100         	# SMC EtherPower II
#module eth16i          	# ICL EtherTeam 16i/32 support
#module ewrk3           	# EtherWORKS 3 (DE203, DE204, DE205) support
#module fealnx          	# Myson MTD-8xx PCI Ethernet support
module forcedeth 		# nForce Ethernet support (nVidia 0.62-Driver Package V1.30)
#module hp-plus         	# HP PCLAN+ (27247B and 27252A) support
#module hp              	# HP PCLAN (27245 and other 27xxx series) support
#module lp486e          	# LP486E on board Ethernet
#module lance           	# AMD LANCE and PCnet (AT1500 and NE2100) support
#module ne io=0x300     	# NE2000/NE1000 support
#module ne2k-pci         	# PCI version of NE-2000
#module natsemi         	# National Semiconductor DP8381x series PCI Ethernet support
#module ni5010          	# Racal-Interlan (Micom) NI cards
#module ni52            	# Racal-Interlan (Micom) NI cards
#module ni65            	# Racal-Interlan (Micom) NI cards
module pcnet32	         	# AMD PCnet32 PCI support
module sis900           	# SiS 900/7016 PCI Fast Ethernet Adapter support. Common
	                       	#  in integrated motherboards
#module smc-ultra       	# SMC Ultra support
#module smc9194         	# SMC 9194 support
#module starfire        	# Adaptec Starfire/DuraLAN support
#module sundance        	# Sundance Alta support
#module tlan            	# TI ThunderLAN support, Compaq Neteligent 10/100
#module typhoon         	# 3cr990 series "Typhoon" support
#module tulip           	# DECchip Tulip (dc21x4x) PCI support
module via-rhine        	# VIA Rhine support (both Rhine I and II). Common in integrated motherboards
#module wd              	# WD80*3 support
#module winbond-840     	# Winbond W89c840 Ethernet support
#module xircom_cb       	# Xircom CardBus support
#module xircom_tulip_cb 	# Xircom Tulip-like CardBus support


#!!!Ethernet 1000 Mbit Modules
#module acenic         		# Alteon AceNIC/3Com 3C985/NetGear GA620 Gigabit support
#module atl1			# Attansic L1. Atheros 1000M Ethernet Network Driver (v. 1.2.40.3)
#module atl1e			# Attansic L1e. Atheros(R) AR8121/AR8113/AR8114 PCI-E Ethernet Network Driver (v. 1.0.1.0)
#module bnx2           		# Broadcom NetXtremeII support (v. 2.0.8e)
#module dl2k           		# D-Link DL2000-based Gigabit Ethernet support
module e1000          		# Intel(R) PRO/1000 Gigabit Ethernet support (PCI) (v. 8.0.23)
#module e1000e			# Intel(R) 82567LM (PCIe) (v. 1.2.17-NAPI)
#module ns83820        		# National Semiconductor DP83820 support
#module hamachi        		# Packet Engines Hamachi GNIC-II support
#module yellowfin      		# Packet Engines Yellowfin Gigabit-NIC support
#module	r8101			# Realtek 8101 Gigabit Ethernet support
#module r8168          		# Realtek 8168 Gigabit Ethernet support
module r8169          		# Realtek 8169 Gigabit Ethernet support (v. 6.011)
#module sis190        		# SiS190/SiS191 gigabit ethernet support
#module skge       		# New SysKonnect GigaEthernet support
#module sk98lin        		# Marvell Yukon Chipset / SysKonnect SK-98xx Support
#module sky2        		# SysKonnect Yukon2 support
#module tg3            		# Broadcom Tigon3 (v. 3.110g)
#module via-velocity   		# VIA Velocity support

#!!!Ethernet 10000 Mbit Modules
#module cxgb           		# Chelsio 10Gb Ethernet support
#module ixgb           		# Intel(R) PRO/10GbE support (v. 1.0.135)
#module igb			# Intel 82575/6 & 82580 (v. 2.3.4)
#module ixgbe			# (v. 3.0.12-NAPI)
#module s2io           		# S2IO 10Gbe XFrame NIC
#module bnx2x			# Broadcom 57710 and 57711(e)

#!!!Token Ring modules
#module 3c359          		# 3Com 3C359 Token Link Velocity XL adapter support 
#module abyss          		# Madge Smart 16/4 PCI Mk2 support
#module ibmtr          		# IBM Tropic chipset based adapter support
#module lanstreamer    		# IBM Lanstreamer chipset PCI adapter support
#module olympic        		# IBM Olympic chipset PCI adapter support
#module smctr          		# SMC ISA/MCA adapter support
#module proteon        		# Proteon ISA support
#module skisa          		# SysKonnect TR4/16 ISA support
#module tmsisa         		# Generic TMS380 ISA support
#module tmspci         		# Generic TMS380 PCI support
#module mtok          	 	# Madge Token Ring Linux Driver


#!!!PCMCIA Network Modules
#module 3c589_cs      		# 3Com 3c589 PCMCIA support
#module 3c574_cs     	 	# 3Com 3c574 PCMCIA support
#module fmvj18x_cs    		# Fujitsu FMV-J18x PCMCIA support
#module pcnet_cs      		# NE2000 compatible PCMCIA support
#module nmclan_cs     		# New Media PCMCIA support
#module smc91c92_cs   		# SMC 91Cxx PCMCIA support
#module xirc2ps_cs      	# Xircom 16-bit PCMCIA support
#module axnet_cs      		# Asix AX88190 PCMCIA support
#module ibmtr_cs      		# IBM PCMCIA tokenring adapter support


#!!!Wireless PCMCIA Network Modules
#module ray_cs        		# Aviator/Raytheon 2.4MHz wireless support
#module netwave_cs    		# Xircom Netwave AirSurfer Pcmcia wireless support
#module wavelan_cs    		# AT&T/Lucent old WaveLAN Pcmcia wireless support


#!!!Wireless Modules
#module orinoco_pci    		# Prism 2.5 PCI 802.11b adaptor support (EXPERIMENTAL)
#module orinoco_cs     		# Hermes PCMCIA card support
#module airo_cs        		# Cisco/Aironet 34X/35X/4500/4800 PCMCIA cards


#!!!Other Wireless Support
#module ath_pci        		#  Madwifi Support
#module aes-i586       		#  WPA Supplicant Support


#!!Modem Modules
#module cdc-acm              	# USB Modem support (CDC ACM)


#!!USB Serial Converters
#module airprime		# USB AirPrime CDMA Wireless Driver
#module anydata			# USB AnyData CDMA Wireless Driver
#module belkin_sa		# USB Belkin and Peracom Single Port Serial Driver
#module whiteheat		# USB ConnectTech WhiteHEAT Serial Driver
#module digi_acceleport         # USB Digi International AccelePort USB Serial Driver
#module cp2101			# USB CP2101 UART Bridge Controller
#module cypress_m8		# USB Cypress M8 USB Serial Driver
#module empeg                   # USB Empeg empeg-car Mark I/II Driver
#module ftdi_sio		# USB FTDI Single Port Serial Driver
#module visor			# USB Handspring Visor / Palm m50x / Sony Clie Driver
#module ipaq			# USB PocketPC PDA Driver
#module ir-usb			# USB IR Dongle Serial Driver
#module io_edgeport		# USB Inside Out Edgeport Serial Driver
#module io_ti			# USB Inside Out Edgeport Serial Driver (TI devices)
#module garmin_gps		# USB Garmin GPS driver
#module ipw			# USB IPWireless (3G UMTS TDD) Driver
#module keyspan_pda		# USB Keyspan PDA Single Port Serial Driver
#module kl5kusb105		# USB KL5KUSB105 (Palmconnect) Driver
#module kobil_sct               # USB KOBIL chipcard reader
#module mct_u232		# USB MCT Single Port Serial Driver
#module pl2303			# USB Prolific 2303 Single Port Serial Driver
#module hp4x			# USB HP4x Calculators support
#module ti_usb_3410_5052        # USB TI 3410/5052 Serial Driver
#module cyberjack               # USB REINER SCT cyberJack pinpad/e-com chipcard reader
#module option                  # USB Option PCMCIA serial driver
#module omninet                 # USB ZyXEL omni.net LCD Plus Driver


#!!Sound Modules
#
#!!!ISA
#

#module snd-ad1816a                     # Analog Devices SoundPort AD1816A
#module snd-ad1848                      # AD1848 (Analog Devices) or CS4248 (Cirrus Logic)
#module snd-cs4231                      # CS4231 chips from Cirrus Logic
#module snd-cs4232                      # CS4232 chips from Cirrus Logic
#module snd-cs4236                      # CS4235,CS4236,CS4237B,CS4238B,CS4239 chips from Cirrus Logic
#module snd-es968                       # ESS AudioDrive ES968 chips
#module snd-es1688                      # ESS AudioDrive ES688 or ES1688 chips
#module snd-es18xx                      # ESS AudioDrive ES18xx chips
#module snd-gusclassic                  # Gravis UltraSound Classic soundcards 
#module snd-gusextreme                  # Gravis UltraSound Extreme soundcards 
#module snd-gusmax                      # Gravis UltraSound MAX soundcards 
#module snd-interwave                   # AMD InterWave based soundcards (Gravis UltraSound Plug & Play
                                        #  STB SoundRage32, MED3210, Dynasonic Pro, Panasonic PCA761AW)
#module snd-interwave-stb               # AMD InterWave based soundcards with a TEA6330T bass and
                                        #  treble regulator (UltraSound 32-Pro).
#module snd-opti92x-ad1848              # Opti 82C92x or OTI-601 chips and using an AD1848 codec
#module snd-opti92x-cs4231      	# Opti 82C92x chips and using a CS4231 codec
#module snd-opti93x                     # Opti 82C93x chips
#module snd-sb8                         # Creative Sound Blaster 1.0 2.0/Pro (8-bit) or 100% compatible
#module snd-sb16                        # Sound Blaster 16 soundcards (including Plug and Play version)
#module snd-sbawe                       # Sound Blaster AWE soundcards (including Plug and Play version)
#module snd-wavefront                   # Turtle Beach Maui, Tropez, Tropez+ based on the Wavefront chip
#module snd-als100                      # Avance Logic ALS100, ALS110, ALS120 and ALS200 chips
#module snd-azt2320                     # Aztech Systems AZT2320 chip
#module snd-cmi8330                     # C-Media CMI8330 chip
#module snd-dt019x                      # Diamond Technologies DT-019X or Avance Logic ALS-007 chips
#module snd-opl3sa2                     # Yamaha OPL3-SA2 and OPL3-SA3 chips
#module snd-sgalaxy                     # Aztech Sound Galaxy soundcards
#module snd-sscape                      # Ensoniq SoundScape PnP soundcards


#
#!!!PCI
#

#module snd-ali5451                     # AC97 intergrated device with ALi M5451 Audio Controller
                                        #  (M1535/M1535D/M1535+/M1535D+ south bridges)
#module snd-atiixp                      # AC97 intergrated device with ATI chipsets
                                        #  (ATI IXP 150/200/250/300/400)
#module snd-au8810                      # Aureal Advantage soundcards
#module snd-au8820                      # Aureal Vortex soundcards
#module snd-au8830                      # Aureal Vortex 2 soundcards
#module snd-azt3328                     # Aztech AZF3328 (PCI168) soundcards
#module snd-cs46xx                      # Cirrus Logic CS4610/CS4612/CS4614/CS4615/CS4622/
                                        #  CS4624/CS4630/CS4280 chips
#module snd-cs4281                      # Cirrus Logic CS4281 chips
#module snd-cs5535audio                 # CS5535/CS5536 Audio
#module snd-emu10k1                     # Sound Blaster PCI 512, Live!, Audigy and
                                        #  E-mu APS (partially supported) soundcards
#module snd-emu10k1x                    # Emu10k1X (Dell OEM Version)
#module snd-korg1212                    # Korg 1212IO soundcards
#module snd-mixart                      # Digigram miXart soundcards
#module snd-nm256                       # NeoMagic NM256AV/ZX chips
#module snd-rme32                       # RME Digi32, Digi32 PRO and Digi32/8 (Sek'd Prodif32,
                                        #  Prodif96 and Prodif Gold) audio devices
#module snd-rme96                       # RME Digi96, Digi96/8 and Digi96/8 PRO/PAD/PST soundcards
#module snd-rme9652                     # RME Hammerfall (RME Digi9652/Digi9636) soundcards
#module snd-hdsp                        # RME Hammerfall DSP Audio soundcards
#module snd-hda-intel model=auto position_fix=1       # Intel HD Audio with default parameters - you may need to change these
					# Further help: http://wiki.sabayon.org/index.php?title=HOWTO:_Resolve_Problems_with_HDA-Intel_Sound_Cards
#module snd-trident                     # Trident 4D-Wave DX/NX or SiS 7018 chips
#module snd-ymfpci                      # Yamaha PCI chips YMF724,YMF724F,YMF740,YMF740C,YMF744,YMF754
#module snd-als4000                     # Avance Logic ALS4000 chips
#module snd-cmipci                      # C-Media CMI8338 or CMI8738 chips
#module snd-ens1370                     # Ensoniq AudioPCI ES1370 chips
#module snd-ens1371                     # Ensoniq AudioPCI ES1371 chips and Sound Blaster PCI 64 or 128
#module snd-es1938                      # ESS Solo-1 (ES1938, ES1946, ES1969) chips
#module snd-es1968                      # ESS Maestro 1/2/2E chips
#module snd-maestro3                    # ESS Maestro 3 (Allegro) chips
#module snd-fm801                       # ForteMedia FM801 chip
#module snd-ice1712                     # ICE1712 (Envy24) chip
#module snd-ice1724                     # ICE/VT1724/1720 (Envy24HT/PT) chips
#module snd-intel8x0                    # AC97 intergrated device with Intel/SiS/nVidia/AMD chipsets, or
                                        #  ALi chipsets using the M5455 Audio Controller
#module snd-sonicvibes                  # S3 SonicVibes chip
#module snd-sonicvibes                  # S3 SonicVibes chip
#module snd-via82xx                     # AC97 intergrated device with VIA chipsets
#module snd-vx222                       # Digigram VX222 soundcards

#!!USB Devices
module usb-hid			# Needed for USB keyboards and mice  
module usb-storage      	# Needed for USB-Sticks
#module usb-printer      	# Needed for USB-Printers
module usb-cdrom               # Needed for USB CD-Rom Drives

#!!Storage Devices
#module ide-floppy       	# LS-120, Iomega Zip
#module floppy           	# Floppy disk support
module ide-cd           	# CD-Rom Drive Support
#module ahci			# ACHI SATA support
module ata_piix 		# Intel piix SATA chipset support
#module sata_nv			# NVidia SATA support
#module sata_promise		# Promise SATA support
#module sata_sil		# Silicon Image SATA support
#module sata_sil24		# Silicon Image 3124/3132 SATA support
#module sata_sis		# SIS 964/180 SATA support
#module sata_via		# VIA SATA support


#!!Filesystem Support
# Every mounted device needs a filesystem, so choose which ones you need.
#module autofs4          	# Automount and autofs support
module isofs            	# ISO9960 file system support for CDRoms
#module udf                     # ISO13346 (UDF) file system
module vfat             	# Fat and VFat file system support
module ntfs             	# NTFS file system support
module ext2             	# Ext2 file system support
module ext3            		# Ext3 file system support
module supermount       	# Supermount support for auto unmounting of removable media
#module nfs             	# NFS file system support
#module smbfs           	# Samba client FS Support, allows you to mount smb filesystems


#################################################
### --- Packages to include in boot image --- ###
#################################################

# A package is a program or utility.
# Any packages may be added as "package" or "pkg".
# If defined as a "package", the program is included in the boot image.
# If defined as a "pkg", the program is added from outside the image.
# Normally, you should use "package".  Only use "pkg" if you want to
# dynamically load programs.


# --- Packages to include in boot image
# --- Packages below may be "package" or "pkg"
#!!Miscellaneous
package hwclock			# Utility to set system time from hardware clock
package rdate			# Utility to obtain date & time from network
#package ntp			# Utility to obtain date & time from network (only use one of these)
#package sound-esd		# Enable sound-esd or sound-nasd if you want to be able to control
#package sound-nasd		#  sound on your thin client from another computer or
                        	#  your remote session.
#package iptables		# IP Tables support

#!!X related
# XFree86 ver. 3 drivers. Not recommended for normal use. Really old hardware only.
#package xf3-svga		# XF86_SVGA 3.3.6 server
#package xf3-s3			# XF86_S3 3.3.6 server
#package xf3-vmware		# VMWare X server for development
#
#package xorg6-tinyx		# TinyX Xvesa server (for low memory machines).
				#  Works with ICA too, but is slower. Don't choose any X modules with
				#  this server. You don't need anything else. Otherwise choose from
				#  Xfree 3 or regular xorg (xorg is recommended).
#package xorg6vnc         	# Xorg VNC Server Module. With this package you can
                        	#  connect to the Thinstation client's desktop from a java
                        	#  browser at "http://<TS ip>:5800

# --- Xorg6R9.0
# General Xorg6R9.0 video drivers
# This never gets old: only include what you really need!
#package xorg6-apm           		# Alliance ProMotion video driver 
#package xorg6-ark           		# Ark Logic video driver
#package xorg6-ati            		# ATI video driver
#package xorg6-chips         		# Chips and Technologies video driver 
#package xorg6-cirrus        		# Cirrus Logic video driver
#package xorg6-cyrix         		# Cyrix video driver
#package xorg6-glint         		# GLINT/Permedia video driver 
#package xorg6-i128          		# Number 9 I128 video driver 
#package xorg6-i740           		# Intel i740 video driver 
package xorg6-i810	   		# Intel 8xx integrated graphics chipsets 
#package xorg6-mga           		# Matrox video driver 
#package xorg6-neomagic      		# Neomagic video driver 
#package xorg6-nsc           		# Nsc video driver 
package xorg6-nv            		# NVIDIA video driver
#package xorg6-nvidia			# Driver for modern nVidia cards (ver. 185.18.14)
#package xorg6-r128           		# ATI Rage 128 video driver 
package xorg6-radeon        		# ATI RADEON video driver 
#package xorg6-rendition     		# Rendition video driver 
package xorg6-s3		   	# S3 video driver
#package xorg6-s3virge        		# S3 ViRGE video driver 
#package xorg6-savage         		# S3 Savage video driver 
#package xorg6-siliconmotion 		# Silicon Motion video driver 
#package xorg6-sis            		# SiS video driver
#package xorg6-tdfx          		# 3Dfx video driver 
#package xorg6-tga           		# DEC TGA video driver
package xorg6-trident        		# Trident video driver
#package xorg6-tseng         		# Tseng Labs video driver 
package xorg6-vesa	   		# Generic VESA driver, use this if you don't know what to use
#package xorg6-vga	   		# VGA 320x200 8 bit
package xorg6-via			# Legacy VIA driver. Conflicts with xorg6-openchrome!!!
#package xorg6-unichrome       		# VIA unichrome for CLE266, KM400/KN400, K8M800/K8N800, PM800/PM880/CN400
					# P4M800PRO, CX700, K8M890, P4M890, CN750, P4M900, VX800. Conflicts with xorg6-via!!!
package xorg6-vmware        		# VMware SVGA video driver 
# Experimental drivers for Intel chip sets:
#package z-xorg6-intel			# supports i740, i810, i915, i945, i950 and new models of GMA graphics like GMA3000
					# Do not use manual X settings with this (only auto probe).
#package z-915resolution		# adds support for 1440x900 and	1680x1050 modes. See http://915resolution.mango-lang.org/


#!!Keyboard layouts  (Language/Country)
#package keymaps-ar      	# Arabic
#package keymaps-cs      	# Czech
#package keymaps-da      	# Danish
#package keymaps-de      	# German
#package keymaps-de_ch   	# German-Switzerland
#package keymaps-en_gb   	# English-Great Britian
#package keymaps-en_in   	# English-United States International
#package keymaps-en_nz    	# English-New Zealand
package keymaps-en_us   	# English-United States
#package keymaps-es      	# Spanish
#package keymaps-et      	# Estonian
#package keymaps-fr_be   	# French-Belgium
#package keymaps-fr_ca   	# French-Canada
#package keymaps-fr_ch   	# French-Switzerland
#package keymaps-fr      	# French
#package keymaps-hr      	# Croatian
#package keymaps-hu      	# Hungarian
#package keymaps-it      	# Italian
#package keymaps-ja      	# Japanese
#package keymaps-la      	# Latin
#package keymaps-lt      	# Lithuanian
#package keymaps-lv      	# Latvian
#package keymaps-mk      	# Macedonian
#package keymaps-nl      	# Dutch
#package keymaps-nl_be   	# Dutch-Belgium
#package keymaps-nb      	# Norwegian
#package keymaps-pl      	# Polish
#package keymaps-pt_br   	# Portuguise-Brazil
#package keymaps-pt      	# Portuguise
#package keymaps-ro      	# Romanian
#package keymaps-ru      	# Russian
#package keymaps-sv_fi   	# Swedish-Finland
#package keymaps-sv      	# Swedish
#package keymaps-sl      	# Slovenian
#package keymaps-th      	# Thai
#package keymaps-tr      	# Turkish

#!Applications
#!!Connection Package types.  Choose *at least* one!
#package rdesktop		# X RDP client for Windows Terminal Services (ver 1.6). Conflicts with rdesktopsvn.
#package rdesktopsvn            # Experimental version (1609) of rdesktop as of February 2011. Conflicts with rdesktop 1.6.
package freerdp			# FreeRDP ver. 0.8.2
#package rdesktop_svga   	# SVGA RDP client. This is Version 1.1 of rdesktop. Only use this for low memory machines
#package vncviewer		# VNC client (vncviewer)
#package ica			# Citrix ICA client ver. 11
#package tarantella		# Tarantella client support
#package ica_wfc         	# Citrix ICA manager ver. 11
#package xnest			# XDM in a window client
package rxvt            	# Light Xterm Client (vt102)
#package xterm           	# Xterm Client (vt220)
#package ssh 			# Secure Shell client
#package tn5250          	# 5250 terminal emulator
#package dillo 			# Dillo light web browser
#package nx              	# No Machine NX client
#package 2x                     # 2X client
#package java			# Java runtime
#package firefox		# Firefox web browser ver. 3.6.x
#package flash			# Flash plug-in ver. 9.0
#package xpdf			# XPDF ver. 3.0.2
#package kiosk			# Sets Firefox in kiosk mode (full screen requires a WM)
#package thinlinc		# Cendio Thinlinc terminal client ver. 3.1.2-2751
#package vmview			# Open-vmware view client 4.5.0

#!!Window Managers. Choose no more than ONE window manager.
# Not needed if you don't want to manage windows.
#package blackbox		# "Blackbox" window manager.  Makes TS a light workstation.
package icewm			# "ICEWM" window manager.  Makes TS a light workstation.
#package icewm-theme-bernstein	# Select ONE icewm theme package.
#package icewm-theme-bluecrux	# GTK2 style
#package icewm-theme-liquid	# Mac "liquid" style
package icewm-theme-xp          # Windows XP style

#!!Window Manager Utils
package xtdesk         		# Adds icons to desktop
#package ttf-freefont		# GNU freefont true type font. Improves the looks of icewm, firefox etc. (3.5 MB)

#!!Other services
#package www 			# Web access to client.  From a browser: "http://<IP number>"
                        	#  The standard page is for general user settings, administrative access
                        	#  is on port 6800.
#package lp_server		# Remote printing daemon (JetDirect compatible)
#package lpr             	# LPR Print Server, for use with samba-server package
#package lprng          	# LPRng Print Server, supports network based printing
#package sshd 			# Dropbear secure shell server
#package tftpd 			# Built in tftpd server. Useful for making a tftpserver
				#  for thinstation on a WAN over a slow link.
#package samba-server		# Samba server FS Support, allows you to share
                        	#  local floppy/cdrom/hd/printer to other Windows
				#  PCs. Needs supermount for removeable media.
#package samba-client		# Samba smbclient, gives a shell like environment to access an samba server
#package hdupdate       	# Package for updating TS images on a hardisk over a network connection
#package scp            	# Add ability to download files over internet using scp.  This package
                        	#  adds some networking based options for downloading configuration files or
                        	#  in using hdupdate package.
#package openvpn                # OpenVPN Client Support


#!!PCSCD Card Readers
#package gemplus410             # Card reader Gemplus 410 (Serial) and Gemplus 430 (USB)
#package ccidreader             # Generic USB card reader


#!!Miscellaneous
#package e3 			# Basic text editor. e3vi = vi style, e3ws = word star (Borland),
				# e3pi = pico, e3em = emacs
#package hwdetect		# Package with lshw.
#package debug			# Debug support, adds strace, lspci, lsusb, ethtool and other commands
                        	# Not recommended for normal use.

#!Parameters
########################################
### --- Miscellaneous Parameters --- ###
########################################
#!!Basic
param rootpasswd     pleasechangeme			# Do Change!  Console/telnet password for root
                                        		#  If this is enabled, Telnetd will be enabled.
param xorgvncpasswd  pleasechangeme   			# VNC Access Password
param storagepasswd  pleasechangeme  			# Password for storage server
param dialuppasswd   pleasechangeme  			# Password for dialin account
param sambapasswd    pleasechangeme  			# Password for samba shares when using user mode security
param bootlogo       true            			# Backgound picture during boot
param bootresolution 1024x768				# Resolution used during Thinstation boot
param desktop	     ./background.jpg			# Background image for the desktop. More images in backgrounds/
param defaultconfig  thinstation.conf.buildtime  	# The file with default setup.  No other config file is found
                                                 	#  during boot.
param basename       thinstation     			# Used for all config/tftp/scp file names
param basepath       .               			# Used to determine path to tftp/scp/wget files
#param baseurl	      http://myserver.com/		# URL to use when getting config files from a web server
#param keyfile        ./id_rsa       			# Path for private key file used for ssh/scp
#param knownhosts     ./known_hosts  			# Path for ssh known_hosts file for ssh/scp
param localpkgs      false				# to determine is PKG files are to be loaded locally
param fulllocales    false      			# Use full locale support for packages
param icaencryption  false      			# Use ica encryption support, add 290k to image
#param haltonerror    false				# Will halt on error, default is true
param bootverbosity   3          			# Increased vebosity when booting TS
                                			#   0 no verbose messages
                                			#   1 boot
                                			#   2 network
                                			#   4 init
                                			#   8 kernel
                                			#  16 modules
                                			#  32 packages
                                			#  64 email bootlog file to SMTP server & user set in
                                			#     thinstation.conf file.  This will only work
                                			#     if networking is working.
                                			#
                                			#  Combinations can be used (e.g.12 does Kernel and Module Messages)

#!!Advanced
# Leave this alone unless you can't download (wget required on your Linux box):
param icaurl         file://home/installs/linuxx86-11.100.158406.tar.gz
param firefoxurl     http://thinstation.org/download/firefox/firefox-3.6.x-current.tar.bz2
param flashurl       http://thinstation.org/download/2.2/install_flash_player_9_linux.tar.gz
param nxurl          http://thinstation.org/download/nx/nxclient-3.x-current.i386.tar.gz
param 2xurl          http://downloads.2x.com/applicationserver/2xApplicationServerClient3.tar.bz2
param javaurl        http://javadl.sun.com/webapps/download/AutoDL?BundleId=42723
param tarantellaurl  file://home/installs/tnci3li.tar
#param httpproxy      http://192.168.1.2:8080
