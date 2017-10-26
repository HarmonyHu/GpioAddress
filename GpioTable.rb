#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

#(1) GPIO Pad
GPIO_PAD = {
"GPIO_SKL_H_GPP_A0" => 0x01000000 ,
"GPIO_SKL_H_GPP_A1" => 0x01000001 ,
"GPIO_SKL_H_GPP_A2" => 0x01000002 ,
"GPIO_SKL_H_GPP_A3" => 0x01000003 ,
"GPIO_SKL_H_GPP_A4" => 0x01000004 ,
"GPIO_SKL_H_GPP_A5" => 0x01000005 ,
"GPIO_SKL_H_GPP_A6" => 0x01000006 ,
"GPIO_SKL_H_GPP_A7" => 0x01000007 ,
"GPIO_SKL_H_GPP_A8" => 0x01000008 ,
"GPIO_SKL_H_GPP_A9" => 0x01000009 ,
"GPIO_SKL_H_GPP_A10" => 0x0100000A ,
"GPIO_SKL_H_GPP_A11" => 0x0100000B ,
"GPIO_SKL_H_GPP_A12" => 0x0100000C ,
"GPIO_SKL_H_GPP_A13" => 0x0100000D ,
"GPIO_SKL_H_GPP_A14" => 0x0100000E ,
"GPIO_SKL_H_GPP_A15" => 0x0100000F ,
"GPIO_SKL_H_GPP_A16" => 0x01000010 ,
"GPIO_SKL_H_GPP_A17" => 0x01000011 ,
"GPIO_SKL_H_GPP_A18" => 0x01000012 ,
"GPIO_SKL_H_GPP_A19" => 0x01000013 ,
"GPIO_SKL_H_GPP_A20" => 0x01000014 ,
"GPIO_SKL_H_GPP_A21" => 0x01000015 ,
"GPIO_SKL_H_GPP_A22" => 0x01000016 ,
"GPIO_SKL_H_GPP_A23" => 0x01000017 ,
"GPIO_SKL_H_GPP_B0" => 0x01010000 ,
"GPIO_SKL_H_GPP_B1" => 0x01010001 ,
"GPIO_SKL_H_GPP_B2" => 0x01010002 ,
"GPIO_SKL_H_GPP_B3" => 0x01010003 ,
"GPIO_SKL_H_GPP_B4" => 0x01010004 ,
"GPIO_SKL_H_GPP_B5" => 0x01010005 ,
"GPIO_SKL_H_GPP_B6" => 0x01010006 ,
"GPIO_SKL_H_GPP_B7" => 0x01010007 ,
"GPIO_SKL_H_GPP_B8" => 0x01010008 ,
"GPIO_SKL_H_GPP_B9" => 0x01010009 ,
"GPIO_SKL_H_GPP_B10" => 0x0101000A ,
"GPIO_SKL_H_GPP_B11" => 0x0101000B ,
"GPIO_SKL_H_GPP_B12" => 0x0101000C ,
"GPIO_SKL_H_GPP_B13" => 0x0101000D ,
"GPIO_SKL_H_GPP_B14" => 0x0101000E ,
"GPIO_SKL_H_GPP_B15" => 0x0101000F ,
"GPIO_SKL_H_GPP_B16" => 0x01010010 ,
"GPIO_SKL_H_GPP_B17" => 0x01010011 ,
"GPIO_SKL_H_GPP_B18" => 0x01010012 ,
"GPIO_SKL_H_GPP_B19" => 0x01010013 ,
"GPIO_SKL_H_GPP_B20" => 0x01010014 ,
"GPIO_SKL_H_GPP_B21" => 0x01010015 ,
"GPIO_SKL_H_GPP_B22" => 0x01010016 ,
"GPIO_SKL_H_GPP_B23" => 0x01010017 ,
"GPIO_SKL_H_GPP_C0" => 0x01020000 ,
"GPIO_SKL_H_GPP_C1" => 0x01020001 ,
"GPIO_SKL_H_GPP_C2" => 0x01020002 ,
"GPIO_SKL_H_GPP_C3" => 0x01020003 ,
"GPIO_SKL_H_GPP_C4" => 0x01020004 ,
"GPIO_SKL_H_GPP_C5" => 0x01020005 ,
"GPIO_SKL_H_GPP_C6" => 0x01020006 ,
"GPIO_SKL_H_GPP_C7" => 0x01020007 ,
"GPIO_SKL_H_GPP_C8" => 0x01020008 ,
"GPIO_SKL_H_GPP_C9" => 0x01020009 ,
"GPIO_SKL_H_GPP_C10" => 0x0102000A ,
"GPIO_SKL_H_GPP_C11" => 0x0102000B ,
"GPIO_SKL_H_GPP_C12" => 0x0102000C ,
"GPIO_SKL_H_GPP_C13" => 0x0102000D ,
"GPIO_SKL_H_GPP_C14" => 0x0102000E ,
"GPIO_SKL_H_GPP_C15" => 0x0102000F ,
"GPIO_SKL_H_GPP_C16" => 0x01020010 ,
"GPIO_SKL_H_GPP_C17" => 0x01020011 ,
"GPIO_SKL_H_GPP_C18" => 0x01020012 ,
"GPIO_SKL_H_GPP_C19" => 0x01020013 ,
"GPIO_SKL_H_GPP_C20" => 0x01020014 ,
"GPIO_SKL_H_GPP_C21" => 0x01020015 ,
"GPIO_SKL_H_GPP_C22" => 0x01020016 ,
"GPIO_SKL_H_GPP_C23" => 0x01020017 ,
"GPIO_SKL_H_GPP_D0" => 0x01030000 ,
"GPIO_SKL_H_GPP_D1" => 0x01030001 ,
"GPIO_SKL_H_GPP_D2" => 0x01030002 ,
"GPIO_SKL_H_GPP_D3" => 0x01030003 ,
"GPIO_SKL_H_GPP_D4" => 0x01030004 ,
"GPIO_SKL_H_GPP_D5" => 0x01030005 ,
"GPIO_SKL_H_GPP_D6" => 0x01030006 ,
"GPIO_SKL_H_GPP_D7" => 0x01030007 ,
"GPIO_SKL_H_GPP_D8" => 0x01030008 ,
"GPIO_SKL_H_GPP_D9" => 0x01030009 ,
"GPIO_SKL_H_GPP_D10" => 0x0103000A ,
"GPIO_SKL_H_GPP_D11" => 0x0103000B ,
"GPIO_SKL_H_GPP_D12" => 0x0103000C ,
"GPIO_SKL_H_GPP_D13" => 0x0103000D ,
"GPIO_SKL_H_GPP_D14" => 0x0103000E ,
"GPIO_SKL_H_GPP_D15" => 0x0103000F ,
"GPIO_SKL_H_GPP_D16" => 0x01030010 ,
"GPIO_SKL_H_GPP_D17" => 0x01030011 ,
"GPIO_SKL_H_GPP_D18" => 0x01030012 ,
"GPIO_SKL_H_GPP_D19" => 0x01030013 ,
"GPIO_SKL_H_GPP_D20" => 0x01030014 ,
"GPIO_SKL_H_GPP_D21" => 0x01030015 ,
"GPIO_SKL_H_GPP_D22" => 0x01030016 ,
"GPIO_SKL_H_GPP_D23" => 0x01030017 ,
"GPIO_SKL_H_GPP_E0" => 0x01040000 ,
"GPIO_SKL_H_GPP_E1" => 0x01040001 ,
"GPIO_SKL_H_GPP_E2" => 0x01040002 ,
"GPIO_SKL_H_GPP_E3" => 0x01040003 ,
"GPIO_SKL_H_GPP_E4" => 0x01040004 ,
"GPIO_SKL_H_GPP_E5" => 0x01040005 ,
"GPIO_SKL_H_GPP_E6" => 0x01040006 ,
"GPIO_SKL_H_GPP_E7" => 0x01040007 ,
"GPIO_SKL_H_GPP_E8" => 0x01040008 ,
"GPIO_SKL_H_GPP_E9" => 0x01040009 ,
"GPIO_SKL_H_GPP_E10" => 0x0104000A ,
"GPIO_SKL_H_GPP_E11" => 0x0104000B ,
"GPIO_SKL_H_GPP_E12" => 0x0104000C ,
"GPIO_SKL_H_GPP_F0" => 0x01050000 ,
"GPIO_SKL_H_GPP_F1" => 0x01050001 ,
"GPIO_SKL_H_GPP_F2" => 0x01050002 ,
"GPIO_SKL_H_GPP_F3" => 0x01050003 ,
"GPIO_SKL_H_GPP_F4" => 0x01050004 ,
"GPIO_SKL_H_GPP_F5" => 0x01050005 ,
"GPIO_SKL_H_GPP_F6" => 0x01050006 ,
"GPIO_SKL_H_GPP_F7" => 0x01050007 ,
"GPIO_SKL_H_GPP_F8" => 0x01050008 ,
"GPIO_SKL_H_GPP_F9" => 0x01050009 ,
"GPIO_SKL_H_GPP_F10" => 0x0105000A ,
"GPIO_SKL_H_GPP_F11" => 0x0105000B ,
"GPIO_SKL_H_GPP_F12" => 0x0105000C ,
"GPIO_SKL_H_GPP_F13" => 0x0105000D ,
"GPIO_SKL_H_GPP_F14" => 0x0105000E ,
"GPIO_SKL_H_GPP_F15" => 0x0105000F ,
"GPIO_SKL_H_GPP_F16" => 0x01050010 ,
"GPIO_SKL_H_GPP_F17" => 0x01050011 ,
"GPIO_SKL_H_GPP_F18" => 0x01050012 ,
"GPIO_SKL_H_GPP_F19" => 0x01050013 ,
"GPIO_SKL_H_GPP_F20" => 0x01050014 ,
"GPIO_SKL_H_GPP_F21" => 0x01050015 ,
"GPIO_SKL_H_GPP_F22" => 0x01050016 ,
"GPIO_SKL_H_GPP_F23" => 0x01050017 ,
"GPIO_SKL_H_GPP_G0" => 0x01060000 ,
"GPIO_SKL_H_GPP_G1" => 0x01060001 ,
"GPIO_SKL_H_GPP_G2" => 0x01060002 ,
"GPIO_SKL_H_GPP_G3" => 0x01060003 ,
"GPIO_SKL_H_GPP_G4" => 0x01060004 ,
"GPIO_SKL_H_GPP_G5" => 0x01060005 ,
"GPIO_SKL_H_GPP_G6" => 0x01060006 ,
"GPIO_SKL_H_GPP_G7" => 0x01060007 ,
"GPIO_SKL_H_GPP_G8" => 0x01060008 ,
"GPIO_SKL_H_GPP_G9" => 0x01060009 ,
"GPIO_SKL_H_GPP_G10" => 0x0106000A ,
"GPIO_SKL_H_GPP_G11" => 0x0106000B ,
"GPIO_SKL_H_GPP_G12" => 0x0106000C ,
"GPIO_SKL_H_GPP_G13" => 0x0106000D ,
"GPIO_SKL_H_GPP_G14" => 0x0106000E ,
"GPIO_SKL_H_GPP_G15" => 0x0106000F ,
"GPIO_SKL_H_GPP_G16" => 0x01060010 ,
"GPIO_SKL_H_GPP_G17" => 0x01060011 ,
"GPIO_SKL_H_GPP_G18" => 0x01060012 ,
"GPIO_SKL_H_GPP_G19" => 0x01060013 ,
"GPIO_SKL_H_GPP_G20" => 0x01060014 ,
"GPIO_SKL_H_GPP_G21" => 0x01060015 ,
"GPIO_SKL_H_GPP_G22" => 0x01060016 ,
"GPIO_SKL_H_GPP_G23" => 0x01060017 ,
"GPIO_SKL_H_GPP_H0" => 0x01070000 ,
"GPIO_SKL_H_GPP_H1" => 0x01070001 ,
"GPIO_SKL_H_GPP_H2" => 0x01070002 ,
"GPIO_SKL_H_GPP_H3" => 0x01070003 ,
"GPIO_SKL_H_GPP_H4" => 0x01070004 ,
"GPIO_SKL_H_GPP_H5" => 0x01070005 ,
"GPIO_SKL_H_GPP_H6" => 0x01070006 ,
"GPIO_SKL_H_GPP_H7" => 0x01070007 ,
"GPIO_SKL_H_GPP_H8" => 0x01070008 ,
"GPIO_SKL_H_GPP_H9" => 0x01070009 ,
"GPIO_SKL_H_GPP_H10" => 0x0107000A ,
"GPIO_SKL_H_GPP_H11" => 0x0107000B ,
"GPIO_SKL_H_GPP_H12" => 0x0107000C ,
"GPIO_SKL_H_GPP_H13" => 0x0107000D ,
"GPIO_SKL_H_GPP_H14" => 0x0107000E ,
"GPIO_SKL_H_GPP_H15" => 0x0107000F ,
"GPIO_SKL_H_GPP_H16" => 0x01070010 ,
"GPIO_SKL_H_GPP_H17" => 0x01070011 ,
"GPIO_SKL_H_GPP_H18" => 0x01070012 ,
"GPIO_SKL_H_GPP_H19" => 0x01070013 ,
"GPIO_SKL_H_GPP_H20" => 0x01070014 ,
"GPIO_SKL_H_GPP_H21" => 0x01070015 ,
"GPIO_SKL_H_GPP_H22" => 0x01070016 ,
"GPIO_SKL_H_GPP_H23" => 0x01070017 ,
"GPIO_SKL_H_GPP_I0" => 0x01080000 ,
"GPIO_SKL_H_GPP_I1" => 0x01080001 ,
"GPIO_SKL_H_GPP_I2" => 0x01080002 ,
"GPIO_SKL_H_GPP_I3" => 0x01080003 ,
"GPIO_SKL_H_GPP_I4" => 0x01080004 ,
"GPIO_SKL_H_GPP_I5" => 0x01080005 ,
"GPIO_SKL_H_GPP_I6" => 0x01080006 ,
"GPIO_SKL_H_GPP_I7" => 0x01080007 ,
"GPIO_SKL_H_GPP_I8" => 0x01080008 ,
"GPIO_SKL_H_GPP_I9" => 0x01080009 ,
"GPIO_SKL_H_GPP_I10" => 0x0108000A ,
"GPIO_SKL_H_GPP_J0" => 0x01090000 ,
"GPIO_SKL_H_GPP_J1" => 0x01090001 ,
"GPIO_SKL_H_GPP_J2" => 0x01090002 ,
"GPIO_SKL_H_GPP_J3" => 0x01090003 ,
"GPIO_SKL_H_GPP_J4" => 0x01090004 ,
"GPIO_SKL_H_GPP_J5" => 0x01090005 ,
"GPIO_SKL_H_GPP_J6" => 0x01090006 ,
"GPIO_SKL_H_GPP_J7" => 0x01090007 ,
"GPIO_SKL_H_GPP_J8" => 0x01090008 ,
"GPIO_SKL_H_GPP_J9" => 0x01090009 ,
"GPIO_SKL_H_GPP_J10" => 0x0109000A ,
"GPIO_SKL_H_GPP_J11" => 0x0109000B ,
"GPIO_SKL_H_GPP_J12" => 0x0109000C ,
"GPIO_SKL_H_GPP_J13" => 0x0109000D ,
"GPIO_SKL_H_GPP_J14" => 0x0109000E ,
"GPIO_SKL_H_GPP_J15" => 0x0109000F ,
"GPIO_SKL_H_GPP_J16" => 0x01090010 ,
"GPIO_SKL_H_GPP_J17" => 0x01090011 ,
"GPIO_SKL_H_GPP_J18" => 0x01090012 ,
"GPIO_SKL_H_GPP_J19" => 0x01090013 ,
"GPIO_SKL_H_GPP_J20" => 0x01090014 ,
"GPIO_SKL_H_GPP_J21" => 0x01090015 ,
"GPIO_SKL_H_GPP_J22" => 0x01090016 ,
"GPIO_SKL_H_GPP_J23" => 0x01090017 ,
"GPIO_SKL_H_GPP_K0" => 0x010A0000 ,
"GPIO_SKL_H_GPP_K1" => 0x010A0001 ,
"GPIO_SKL_H_GPP_K2" => 0x010A0002 ,
"GPIO_SKL_H_GPP_K3" => 0x010A0003 ,
"GPIO_SKL_H_GPP_K4" => 0x010A0004 ,
"GPIO_SKL_H_GPP_K5" => 0x010A0005 ,
"GPIO_SKL_H_GPP_K6" => 0x010A0006 ,
"GPIO_SKL_H_GPP_K7" => 0x010A0007 ,
"GPIO_SKL_H_GPP_K8" => 0x010A0008 ,
"GPIO_SKL_H_GPP_K9" => 0x010A0009 ,
"GPIO_SKL_H_GPP_K10" => 0x010A000A ,
"GPIO_SKL_H_GPP_L2" => 0x010B0002 ,
"GPIO_SKL_H_GPP_L3" => 0x010B0003 ,
"GPIO_SKL_H_GPP_L4" => 0x010B0004 ,
"GPIO_SKL_H_GPP_L5" => 0x010B0005 ,
"GPIO_SKL_H_GPP_L6" => 0x010B0006 ,
"GPIO_SKL_H_GPP_L7" => 0x010B0007 ,
"GPIO_SKL_H_GPP_L8" => 0x010B0008 ,
"GPIO_SKL_H_GPP_L9" => 0x010B0009 ,
"GPIO_SKL_H_GPP_L10" => 0x010B000A ,
"GPIO_SKL_H_GPP_L11" => 0x010B000B ,
"GPIO_SKL_H_GPP_L12" => 0x010B000C ,
"GPIO_SKL_H_GPP_L13" => 0x010B000D ,
"GPIO_SKL_H_GPP_L14" => 0x010B000E ,
"GPIO_SKL_H_GPP_L15" => 0x010B000F ,
"GPIO_SKL_H_GPP_L16" => 0x010B0010 ,
"GPIO_SKL_H_GPP_L17" => 0x010B0011 ,
"GPIO_SKL_H_GPP_L18" => 0x010B0012 ,
"GPIO_SKL_H_GPP_L19" => 0x010B0013 ,
"GPIO_SKL_H_GPD0" => 0x010C0000 ,
"GPIO_SKL_H_GPD1" => 0x010C0001 ,
"GPIO_SKL_H_GPD2" => 0x010C0002 ,
"GPIO_SKL_H_GPD3" => 0x010C0003 ,
"GPIO_SKL_H_GPD4" => 0x010C0004 ,
"GPIO_SKL_H_GPD5" => 0x010C0005 ,
"GPIO_SKL_H_GPD6" => 0x010C0006 ,
"GPIO_SKL_H_GPD7" => 0x010C0007 ,
"GPIO_SKL_H_GPD8" => 0x010C0008 ,
"GPIO_SKL_H_GPD9" => 0x010C0009 ,
"GPIO_SKL_H_GPD10" => 0x010C000A ,
"GPIO_SKL_H_GPD11" => 0x010C000B ,
}

#(2) GPIO_PAD_MODE
GPIO_PAD_MODE = {
"GpioPadModeGpio" => 0x1 ,
"GpioPadModeNative1" => 0x3 ,
"GpioPadModeNative2" => 0x5 ,
"GpioPadModeNative3" => 0x7 ,
"GpioPadModeNative4" => 0x9 ,
}

#(3) GPIO_HOSTSW_OWN
GPIO_HOSTSW_OWN = {
"GpioHostOwnDefault" => 0x0 ,   #/< Leave ownership value unmodified
"GpioHostOwnAcpi" => 0x1 ,   #/< Set HOST ownership to ACPI
"GpioHostOwnGpio" => 0x3 ,   #/< Set HOST ownership to GPIO
}

#(4) GPIO_DIRECTION
GPIO_DIRECTION = {
"GpioDirDefault" => 0x0 ,                #/< Leave pad direction setting unmodified
"GpioDirInOut" => (0x1 | (0x1 << 3)) , #/< Set pad for both output and input
"GpioDirInInvOut" => (0x1 | (0x3 << 3)) , #/< Set pad for both output and input with inversion
"GpioDirIn" => (0x3 | (0x1 << 3)) , #/< Set pad for input only
"GpioDirInInv" => (0x3 | (0x3 << 3)) , #/< Set pad for input with inversion
"GpioDirOut" => 0x5 ,                #/< Set pad for output only
"GpioDirNone" => 0x7 ,                #/< Disable both output and input
}

#(5) GPIO_OUTPUT_STATE
GPIO_OUTPUT_STATE = {
"GpioOutDefault" => 0x0 ,   #/< Leave output value unmodified
"GpioOutLow" => 0x1 ,   #/< Set output to low
"GpioOutHigh" => 0x3 ,   #/< Set output to high
}

#(6) GPIO_INT_CONFIG
GPIO_INT_CONFIG = {
"GpioIntDefault" => 0x0 ,         #/< Leave value of interrupt routing unmodified
"GpioIntDis" => 0x1 ,         #/< Disable IOxAPIC/SCI/SMI/NMI interrupt generation
"GpioIntNmi" => 0x3 ,         #/< Enable NMI interrupt only
"GpioIntSmi" => 0x5 ,         #/< Enable SMI interrupt only
"GpioIntSci" => 0x9 ,         #/< Enable SCI interrupt only
"GpioIntApic" => 0x11 ,        #/< Enable IOxAPIC interrupt only
"GpioIntLevel" => (0x1 << 5) ,  #/< Set interrupt as level triggered
"GpioIntEdge" => (0x3 << 5) ,  #/< Set interrupt as edge triggered (type of edge depends on input inversion)
"GpioIntLvlEdgDis" => (0x5 << 5) ,  #/< Disable interrupt trigger
"GpioIntBothEdge" => (0x7 << 5) ,  #/< Set interrupt as both edge triggered
}

#(7) GPIO_RESET_CONFIG
GPIO_RESET_CONFIG = {
"GpioResetDefault" => 0x0 ,          #/< Leave value of pad reset unmodified
"GpioResetPwrGood" => 0x1 ,          #/< Powergood reset
"GpioResetDeep" => 0x3 ,          #/< Deep GPIO Reset
"GpioResetNormal" => 0x5 ,          #/< GPIO Reset
"GpioResetResume" => 0x7 ,          #/< Resume Reset (applicable only for GPD group)
}

#(8) GPIO_ELECTRICAL_CONFIG
GPIO_ELECTRICAL_CONFIG = {
"GpioTermDefault" => 0x0 ,          #/< Leave termination setting unmodified
"GpioTermNone" => 0x1 ,          #/< none
"GpioTermWpd5K" => 0x5 ,          #/< 5kOhm weak pull-down
"GpioTermWpd20K" => 0x9 ,          #/< 20kOhm weak pull-down
"GpioTermWpu1K" => 0x13 ,         #/< 1kOhm weak pull-up
"GpioTermWpu2K" => 0x17 ,         #/< 2kOhm weak pull-up
"GpioTermWpu5K" => 0x15 ,         #/< 5kOhm weak pull-up
"GpioTermWpu20K" => 0x19 ,         #/< 20kOhm weak pull-up
"GpioTermWpu1K2K" => 0x1B ,         #/< 1kOhm & 2kOhm weak pull-up
"GpioTermNative" => 0x1F ,         #/< Native function controls pads termination
"GpioNoTolerance1v8" => (0x1 << 5) ,   #/< Disable 1.8V pad tolerance
"GpioTolerance1v8" => (0x3 << 5) ,   #/< Enable 1.8V pad tolerance
}

#(9) GPIO_LOCK_CONFIG
GPIO_LOCK_CONFIG = {
"GpioLockDefault" => 0x0 ,          #/< Leave lock setting unmodified
"GpioPadConfigLock" => 0x3 ,          #/< Lock Pad Configuration
"GpioOutputStateLock" => 0x5 ,          #/< Lock GPIO pad output value
}

#(10) GPIO_OTHER_CONFIG
GPIO_OTHER_CONFIG = {
"GpioRxRaw1Default" => 0x0 ,          #/< Use default input override value
"GpioRxRaw1Dis" => 0x1 ,          #/< Don't override input
"GpioRxRaw1En" => 0x3 ,          #/< Override input to '1'
}

=begin
# UINT32(0x01000000),  0x03,  0x03,  0x0B,   0x00,  0x01,  0x03,  0x01,  0x03,  0x00,  0x00, \#GPP_A00 LPC_RCIN_N_ESPI_ALERT1_N
mGpioTableNeonCityEP.each{ |item|
	string = "UINT32(0x%08X),  "%item[0] + "0x%02X,  "%item[1][0] + "0x%02X,  "%item[1][1] + "0x%02X,   "%item[1][2] +
				"0x%02X,  "%item[1][3] + "0x%02X,  "%item[1][4] + "0x%02X,  "%item[1][5] + "0x%02X,  "%item[1][6]
	puts string
}
=end
$InterFile = "interfile.txt"
$OutFile = "new_gpio.txt"
if ARGV.count == 1
	inFile = File.new(ARGV[0],"r:utf-8")
	outFile = File.new("#{$InterFile}","w:utf-8")
	inFile.each {|line|
		line.sub!(/(UINT32\()(0x\w+)(\))(,\s+)(\w+)(,\s+)(\w+)(,\s+)(\w+)(,\s+)(\w+)/){
			GPIO_PAD.invert[eval($2)] + $4 + 
			GPIO_PAD_MODE.invert[eval($5)] + $6 + 
			GPIO_HOSTSW_OWN.invert[eval($7)] + $8 + 
			GPIO_DIRECTION.invert[eval($9)] + $10 + 
			GPIO_OUTPUT_STATE.invert[eval($11)]
		}
		outFile.puts line
	}
	inFile.close
	outFile.close
elsif ARGV.count == 0
	inFile = File.new("#{$InterFile}","r:utf-8")
	outFile = File.new("#{$OutFile}","w:utf-8")
	inFile.each {|line|
		line.sub!(/(\w+)(,\s+)(\w+)(,\s+)(\w+)(,\s+)(\w+)(,\s+)(\w+)/){
			"UINT32(0x%08X)"%GPIO_PAD[$1] + $2 + 
			"0x%02X"%GPIO_PAD_MODE[$3] + $4 + 
			"0x%02X"%GPIO_HOSTSW_OWN[$5] + $6 + 
			"0x%02X"%GPIO_DIRECTION[$7] + $8 + 
			"0x%02X"%GPIO_OUTPUT_STATE[$9]
		}
		outFile.puts line
	}
	inFile.close
	outFile.close
end
