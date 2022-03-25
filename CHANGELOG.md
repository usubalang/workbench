# Changelog

2022-02-04 Loading code on STM32F407 - Discovery

A Makefile is better than an script to compile because the Makefile can delete unwanted compiled and objects files.

We have to be carreful on the includes because each onboard card have their own libraries and its own linker so they need a different Makefile for the moment.

We succed to implemant a program in the card that put on/off light when we press the button. 

2022-02-11 Loading code on STM32F407 - Discovery

we succed to run screen with UART USB connection with the STM32F401 card. And use the 

TODO: Implement the Makefile to make it work with the already working program with the button by coping and pasting the working script and adapting it to fit. Then try to make it work with the printf function from UART.

2022-02-18 Loading code on STM32F407 - Discovery

We kepted trying to make the UART function work on the F4-Discovered. We discovered some problems with some librairies such as audio adn some missing files from the STM32CubeF4.
We also took contact for the code optimization and know where we need to aim when the workbench is over.

TODO: Make a simple function to print on screen on F4-Discovery

On STM32L100:
We manage to compile a program and run it but we don't understand how to change the out.hex, each time we compile the program and run it with change, nothing is changed and we see no difference. We try to make a program with uart but we don't see the difference for the moment because of the bug with the construction of the out.hex.

Another problem with the UART connection is that we cannot find out which tty port of the USB port is connected to the onboard board.

TODO: find the problem to take control of the onboard board and compile/run another program, then try to implement the uart connection.

On STM32L100:
We resolve the problem with the out.hex execution, now we complile and execute simple code on the card.

Now the problem with is that the uart connection with usb port seems to be an issue, the card use the ST-LINK/V2 that is not using the tty connection but an extra USB interfaces. So we need to dig deep with this functionality.

2022-03-11 Print with UART on STM32F4 Discovery and STM32L100, and observe the time with an oscilloscope

We discovered that the ST-LINK/V2-A supports a Virtual COM port (VCP) on U2 pin 12 (ST-LINK_TX) and U2 pin 13 (ST-LINK_RX) but these pins are not connected to the USART of the STM32F407 microcontroller. In conclusion, it is not possible for now to make the UART work on this system. So the problematic was also the version of STLINK. sources : https://os.mbed.com/questions/81581/No-USB-or-UART-on-STM32F407-Discovery/  cf. 6.1.3 de https://www.st.com/content/ccc/resource/technical/document/user_manual/70/fe/4a/3f/e7/e1/4f/7d/DM00039084.pdf/files/DM00039084.pdf/jcr:content/translations/en.DM00039084.pdf

Finally, the STM32L100 cannot use a usb connection, the only way to use uart with usb connection is with an addaptater ST-LINK/V2.
https://electronics.stackexchange.com/questions/321446/is-it-possible-to-use-st-link-usb-for-uart-communication

OPENOCD does not support the STM32G0/STM32G4 as target so we need to do it manualy:
https://rleh.de/2019/10/08/openocd-stm32-stm32g4-stm32g0.html

The OpenOCD work but it's missing the file st_nucleo_G0.cfg to execute the right command openOCD

TODO: Ask a physician if wiring the pins on the STM32F4 Discovery is possible and don't cost to much + Make the UART works on STM32F756

2022-03-11 
Card STM32F756 Nucleo-144
Cannot find any project on CubeF7 for this card. After trying to compile a script I wasn't able to find for instance the linker file for this card.
Trying to compile a file a sending creates imports error. Most tutorial are using CubeIDE to code on this card.

(TO BE COMPLETED)
