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

(TO BE COMPLETED)
