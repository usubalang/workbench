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
	.global	mat_mult__V32
	.arch armv4t
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
	b	.L2
.L3:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-16]
	lsl	r3, r2, r3	@logical shift	left 
	str	r3, [fp, #-20]	@Store
	ldr	r3, [fp, #-20]	@Load la meme donnée
	asr	r3, r3, #31	@arithmethic shift right
	str	r3, [fp, #-24]	@Store
	ldr	r2, [fp, #-24]	@Load la meme donnée
	ldr	r3, [fp, #-8]
	and	r3, r3, r2	@logical and
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-12]	@Load
	ldr	r3, [fp, #-28]	@Store la meme donnée
	eor	r3, r3, r2	@Logical exclusive OR
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mov	r0, r3		@Copie de R3 dans R0
	mov	r1, #0		@Reset a 0 de R1,R2,R3
	mov	r2, #0
	mov	r3, #0
	lsr	r2, r0, #1	@Logical shift right
	orr	r2, r2, r1, lsl #31	@Logical OR or bit set de R2 avec R2 et Logical shift left R1 de 31 
	lsr	r3, r1, #1	@logical shift right
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #31	@logical shift left
	orr	r3, r2, r3	@Or
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1	@add
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #31
	ble	.L3
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
	ldr	r3, .L7
	str	r3, [fp, #-24]
	ldr	r3, .L7+4
	str	r3, [fp, #-20]
	ldr	r3, .L7+8
	str	r3, [fp, #-16]
	ldr	r3, .L7+12
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L5
.L6:
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
.L5:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L6
	nop
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
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
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L10
.L11:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-52]
	add	r3, r1, r3
	ldr	r3, [r3]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-52]
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-52]
	add	r3, r1, r3
	ldr	r3, [r3, #8]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r1, [fp, #-52]
	add	r3, r1, r3
	ldr	r3, [r3, #12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	sub	r2, fp, #40
	sub	r3, fp, #24
	mov	r1, r2
	mov	r0, r3
	bl	MixRows__V32
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	ldr	r3, [fp, #-8]
	cmp	r3, #13
	ble	.L11
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-56]
	str	r2, [r3]
	ldr	r3, [fp, #-56]
	add	r3, r3, #4
	ldr	r2, [fp, #-36]
	str	r2, [r3]
	ldr	r3, [fp, #-56]
	add	r3, r3, #8
	ldr	r2, [fp, #-32]
	str	r2, [r3]
	ldr	r3, [fp, #-56]
	add	r3, r3, #12
	ldr	r2, [fp, #-28]
	str	r2, [r3]
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
