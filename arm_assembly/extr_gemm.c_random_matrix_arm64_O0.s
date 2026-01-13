	.text
	.globl	random_matrix                   // -- Begin function random_matrix
	.p2align	2
	.type	random_matrix,@function
random_matrix:                          // @random_matrix
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-4]
	ldur	w10, [x29, #-8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	rand
	scvtf	s0, x0
	adrp	x8, RAND_MAX
	ldr	s1, [x8, :lo12:RAND_MAX]
	fdiv	s0, s0, s1
	ldr	x8, [sp, #8]
	ldursw	x9, [x29, #-12]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	random_matrix, .Lfunc_end0-random_matrix
                                        // -- End function
	.type	RAND_MAX,@object                // @RAND_MAX
	.bss
	.globl	RAND_MAX
	.p2align	2
RAND_MAX:
	.word	0x00000000                      // float 0
	.size	RAND_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand
	.addrsig_sym RAND_MAX