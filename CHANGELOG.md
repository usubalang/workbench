# Changelog

2022-02-04 Loading code on STM32F407 - Discovery

A Makefile is better than an script to compile because the Makefile can delete unwanted compiled and objects files.

We have to be carreful on the includes because each onboard card have their own libraries and dits own linker so they need a different Makefile for the moment.

We succed to implemant a program in the card that put on/off light when we press the button.

TODO: Implement the Makefile to make it work with the already working program with the button by coping and pasting the working script and adapting it to fit. Then try to make it work with the printf function from UART. 

(TO BE COMPLETED)
