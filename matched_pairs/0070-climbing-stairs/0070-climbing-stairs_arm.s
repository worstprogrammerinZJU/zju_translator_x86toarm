	.arch armv8-a
	.file	"0070-climbing-stairs.c"
	.text
	.align	2
	.global	climbStairs
	.type	climbStairs, %function
climbStairs:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 3
	bgt	.L2
	ldr	w0, [sp, 12]
	b	.L3
.L2:
	mov	w0, 2
	str	w0, [sp, 28]
	mov	w0, 3
	str	w0, [sp, 24]
	mov	w0, 4
	str	w0, [sp, 20]
	b	.L4
.L5:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L4:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 24]
.L3:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	climbStairs, .-climbStairs
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
