# where the STM Cube archive is located
PDIR="/home/administrateur/Documents/EIDD/Projet_transverse/tools/STM32CubeG0"

# the path of the STM example project we are going to compile
PATH="/home/administrateur/Documents/EIDD/Projet_transverse/test_stm32G031"

# clean up existing files
/bin/rm -rf ${PATH}/Lib ${PATH}/obj
/bin/rm -rf ${PATH}/*.hex ${PATH}/*.elf

# make the directories we are going to use to store libraries and such
/bin/mkdir -p ${PATH}/Lib ${PATH}/Obj

LIBDIR="${PATH}/Lib"
LINKER_FILE="${PDIR}/Projects/STM32G0316-DISCO/Templates/STM32CubeIDE/STM32G031J6MX_FLASH.ld"
#TODO find the right in name for lstm32g0xxhal in the out /usr/bin/ar rcs ${LIBDIR}/libstm32g0xxhal.a ${LIBDIR}/*.o at ligne below
LD_FLAGS="-L${LIBDIR} -lstm32g0xxhal -lstm32G0xxbsp -Wl,--gc-sections"

CC="/usr/bin/arm-none-eabi-gcc"
#TODO take the right name in stm32g0xx.h in ${PDIR}/Drivers/CMSIS/Device/ST/STM32G1xx/Include/ and replace -DSTM32G031xx
CFLAGS="-Wall -mcpu=cortex-m4 -mlittle-endian -mthumb -Os -DSTM32G031xx -ggdb"

INCLUDES="-I${PATH}/Inc -I${PDIR}/Drivers/CMSIS/Device/ST/STM32G0xx/Include -I${PDIR}/Drivers/CMSIS/Include -I${PDIR}/Drivers/BSP/STM32G0316-DISCO -I${PDIR}/Drivers/STM32G0xx_HAL_Driver/Inc -I${PDIR}/Drivers/BSP/STM32G0316-DISCO"

OBJCOPY="/usr/bin/objcopy"
OPENOCD="/home/administrateur/Documents/EIDD/Projet_transverse/tools/openocd-code/src/openocd"

/bin/cp ${PATH}/STM32CubeIDE/Application/User/syscalls.c ${PATH}/Src/

# copy the correct startup code file to our directory
/bin/cp ${PDIR}/Drivers/CMSIS/Device/ST/STM32G0xx/Source/Templates/gcc/startup_stm32g031xx.s ${PATH}/Src/

# compile the HAL library
echo "Compiling the HAL library..."
for x in ${PDIR}/Drivers/STM32G0xx_HAL_Driver/Src/*.c; do ${CC} ${CFLAGS} ${INCLUDES} -c -o ${LIBDIR}/$(/usr/bin/basename "${x}" .c).o ${x}; done
/usr/bin/ar rcs ${LIBDIR}/libstm32g0xxhal.a ${LIBDIR}/*.o


# compile the BSP library
echo "Compiling the BSP library..."
for x in ${PDIR}/Drivers/BSP/STM32G0316-DISCO/*.c; do ${CC} ${CFLAGS} ${INCLUDES} -c -o ${LIBDIR}/$(/usr/bin/basename "${x}" .c).o ${x}; done
/usr/bin/ar rcs ${LIBDIR}/libstm32G0xxbsp.a ${LIBDIR}/*.o
/bin/rm ${LIBDIR}/*.o


# compile everything in Src/
echo "Compiling everything in Src..."
for x in ${PATH}/Src/*; do ${CC} ${CFLAGS} ${INCLUDES} -c -o ${PATH}/Obj/$(/usr/bin/basename "${x}" .c).o ${x}; done 

# once compilation is done, run the linker
echo "run the linker..."
${CC} ${CFLAGS} -T${LINKER_FILE} ${PATH}/Obj/*.o -o ${PATH}/out.elf ${LD_FLAGS}


# now, copy to a hex file and upload to the board
${OBJCOPY} -Oihex out.elf out.hex
${OPENOCD} -c "init; reset halt; flash write_image erase out.hex; reset run; exit"







