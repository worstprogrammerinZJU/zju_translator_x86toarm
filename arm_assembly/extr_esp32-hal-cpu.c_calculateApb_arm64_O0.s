	.text
	.p2align	2                               // -- Begin function calculateApb
	.type	calculateApb,@function
calculateApb:                           // @calculateApb
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w8, [x8]
	subs	w8, w8, #80
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, MHZ
	ldr	w9, [x8, :lo12:MHZ]
	mov	w8, #80
	mul	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
	ldr	w8, [x8, #4]
	adrp	x9, MHZ
	ldr	w9, [x9, :lo12:MHZ]
	mul	w8, w8, w9
	ldr	x9, [sp]
	ldr	w9, [x9, #8]
	sdiv	w8, w8, w9
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	calculateApb, .Lfunc_end0-calculateApb
                                        // -- End function
	.type	MHZ,@object                     // @MHZ
	.bss
	.globl	MHZ
	.p2align	2
MHZ:
	.word	0                               // 0x0
	.size	MHZ, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calculateApb
	.addrsig_sym MHZ