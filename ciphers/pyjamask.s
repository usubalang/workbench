	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"pyjamask.c"
	.text
	.align	2
	.global	SubBytes__V32
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	SubBytes__V32, %function
SubBytes__V32:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #68
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	str	r2, [fp, #-64]
	str	r3, [fp, #-68]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-68]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-60]
	and	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-12]
	eor	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	and	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	eor	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-28]
	eor	r3, r3, r2
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-36]
	eor	r3, r3, r2
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	eor	r3, r3, r2
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	eor	r3, r3, r2
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-16]
	mvn	r3, r3
	str	r3, [fp, #-52]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-24]
	str	r2, [r3]
	ldr	r3, [fp, #4]
	add	r3, r3, #4
	ldr	r2, [fp, #-48]
	str	r2, [r3]
	ldr	r3, [fp, #4]
	add	r3, r3, #8
	ldr	r2, [fp, #-52]
	str	r2, [r3]
	ldr	r3, [fp, #4]
	add	r3, r3, #12
	ldr	r2, [fp, #-44]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	SubBytes__V32, .-SubBytes__V32
	.align	2
	.global	AddRoundKey__V32
	.syntax unified
	.arm
	.fpu softvfp
	.type	AddRoundKey__V32, %function
AddRoundKey__V32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	eor	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldr	r1, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	eor	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	ldr	r1, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	eor	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #12
	ldr	r1, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	eor	r2, r2, r1
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	AddRoundKey__V32, .-AddRoundKey__V32
	.align	2
	.global	mat_mult__V32
	.syntax unified
	.arm
	.fpu softvfp
	.type	mat_mult__V32, %function
mat_mult__V32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L4
.L5:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-16]
	lsl	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #31
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	and	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	eor	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #1
	orr	r2, r2, r1, lsl #31
	lsr	r3, r1, #1
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #31
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
	ldr	r3, [fp, #-16]
	cmp	r3, #31
	ble	.L5
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	mat_mult__V32, .-mat_mult__V32
	.align	2
	.global	MixRows__V32
	.syntax unified
	.arm
	.fpu softvfp
	.type	MixRows__V32, %function
MixRows__V32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, .L9
	str	r3, [fp, #-24]
	ldr	r3, .L9+4
	str	r3, [fp, #-20]
	ldr	r3, .L9+8
	str	r3, [fp, #-16]
	ldr	r3, .L9+12
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L7
.L8:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r0, [r3, #-20]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mov	r2, r3
	bl	mat_mult__V32
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L7:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L8
	nop
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	-1551495035
	.word	1665232929
	.word	1764553344
	.word	1218791443
	.size	MixRows__V32, .-MixRows__V32
	.align	2
	.global	pyjamask__
	.syntax unified
	.arm
	.fpu softvfp
	.type	pyjamask__, %function
pyjamask__:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #80
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L12
.L13:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-68]
	add	r1, r2, r3
	sub	r2, fp, #24
	sub	r3, fp, #56
	mov	r0, r3
	bl	AddRoundKey__V32
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	ip, [fp, #-12]
	sub	r3, fp, #40
	str	r3, [sp]
	mov	r3, ip
	bl	SubBytes__V32
	sub	r2, fp, #56
	sub	r3, fp, #40
	mov	r1, r2
	mov	r0, r3
	bl	MixRows__V32
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L12:
	ldr	r3, [fp, #-8]
	cmp	r3, #13
	ble	.L13
	ldr	r3, [fp, #-68]
	add	r1, r3, #224
	sub	r3, fp, #56
	ldr	r2, [fp, #-72]
	mov	r0, r3
	bl	AddRoundKey__V32
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	pyjamask__, .-pyjamask__
	.align	2
	.global	bench_speed
	.syntax unified
	.arm
	.fpu softvfp
	.type	bench_speed, %function
bench_speed:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 272
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #272
	sub	r3, fp, #20
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	sub	r3, fp, #260
	mov	r2, #240
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #276
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	sub	r2, fp, #276
	sub	r1, fp, #260
	sub	r3, fp, #20
	mov	r0, r3
	bl	pyjamask__
	mov	r3, #16
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	bench_speed, .-bench_speed
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
