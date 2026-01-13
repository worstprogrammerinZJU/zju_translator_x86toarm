	.text
	.globl	connsched                       // -- Begin function connsched
	.p2align	2
	.type	connsched,@function
connsched:                              // @connsched
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #24]
	bl	heapremove
	ldr	x8, [sp, #8]
	str	wzr, [x8]
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	conntickat
	ldr	x8, [sp, #8]
	str	x0, [x8, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldr	x1, [sp, #8]
	bl	heapinsert
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	connsched, .Lfunc_end0-connsched
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym heapremove
	.addrsig_sym conntickat
	.addrsig_sym heapinsert