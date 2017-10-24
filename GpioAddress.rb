#PCR基址
PCR_BASE_ADDRESS = 0xFD000000

#PID的值
PID_GPIOCOM0  = 0xAF
PID_GPIOCOM1  = 0xAE
PID_GPIOCOM2  = 0xAD
PID_GPIOCOM3  = 0xAC
PID_GPIOCOM4  = 0xAB
PID_GPIOCOM5  = 0x11

#PadCfgOffset值
R_PCH_PCR_GPIO_GPP_A_PADCFG_OFFSET = 0x400
R_PCH_PCR_GPIO_GPP_B_PADCFG_OFFSET = 0x4C0
R_PCH_PCR_GPIO_GPP_C_PADCFG_OFFSET = 0x400
R_PCH_PCR_GPIO_GPP_D_PADCFG_OFFSET = 0x4C0
R_PCH_PCR_GPIO_GPP_E_PADCFG_OFFSET = 0x580
R_PCH_H_PCR_GPIO_GPP_F_PADCFG_OFFSET = 0x580
R_PCH_H_PCR_GPIO_GPP_G_PADCFG_OFFSET = 0x400
R_PCH_H_PCR_GPIO_GPP_H_PADCFG_OFFSET = 0x4C0
R_PCH_H_PCR_GPIO_GPP_I_PADCFG_OFFSET = 0x400
R_PCH_H_PCR_GPIO_GPP_J_PADCFG_OFFSET = 0x400
R_PCH_H_PCR_GPIO_GPP_K_PADCFG_OFFSET = 0x4C0
R_PCH_H_PCR_GPIO_GPP_L_PADCFG_OFFSET = 0x580
R_PCH_PCR_GPIO_GPD_PADCFG_OFFSET = 0x400

$mPchGpioGroupInfo = {
  "GPP_A"=>[PID_GPIOCOM0, R_PCH_PCR_GPIO_GPP_A_PADCFG_OFFSET],    #SKX PCH-Server GPP_A
  "GPP_B"=>[PID_GPIOCOM0, R_PCH_PCR_GPIO_GPP_B_PADCFG_OFFSET],    #SKX PCH-Server GPP_B
  "GPP_C"=>[PID_GPIOCOM1, R_PCH_PCR_GPIO_GPP_C_PADCFG_OFFSET],    #SKX PCH-Server GPP_C
  "GPP_D"=>[PID_GPIOCOM1, R_PCH_PCR_GPIO_GPP_D_PADCFG_OFFSET],    #SKX PCH-Server GPP_D
  "GPP_E"=>[PID_GPIOCOM1, R_PCH_PCR_GPIO_GPP_E_PADCFG_OFFSET],    #SKX PCH-Server GPP_E
  "GPP_F"=>[PID_GPIOCOM0, R_PCH_H_PCR_GPIO_GPP_F_PADCFG_OFFSET],  #SKX PCH-Server GPP_F
  "GPP_G"=>[PID_GPIOCOM5, R_PCH_H_PCR_GPIO_GPP_G_PADCFG_OFFSET],  #SKX PCH-Server GPP_G
  "GPP_H"=>[PID_GPIOCOM5, R_PCH_H_PCR_GPIO_GPP_H_PADCFG_OFFSET],  #SKX PCH-Server GPP_H
  "GPP_I"=>[PID_GPIOCOM3, R_PCH_H_PCR_GPIO_GPP_I_PADCFG_OFFSET],  #SKX PCH-Server GPP_I
  "GPP_J"=>[PID_GPIOCOM4, R_PCH_H_PCR_GPIO_GPP_J_PADCFG_OFFSET],  #SKX PCH-Server GPP_J
  "GPP_K"=>[PID_GPIOCOM4, R_PCH_H_PCR_GPIO_GPP_K_PADCFG_OFFSET],  #SKX PCH-Server GPP_K
  "GPP_L"=>[PID_GPIOCOM5, R_PCH_H_PCR_GPIO_GPP_L_PADCFG_OFFSET],  #SKX PCH-Server GPP_L
  "GPD"  =>[PID_GPIOCOM2, R_PCH_PCR_GPIO_GPD_PADCFG_OFFSET]       #SKX PCH-Server GPD
};

$mPchGpioGroupInfo.each{|key,value|
  baseAddress = PCR_BASE_ADDRESS + (value[0]<<16) + value[1]
  puts key + "\t: 0x%X"%baseAddress
}
