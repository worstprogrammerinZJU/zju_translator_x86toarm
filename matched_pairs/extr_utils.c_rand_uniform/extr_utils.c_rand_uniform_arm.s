	.text
	.globl	rand_uniform                    // -- Begin function rand_uniform
	.p2align	2
	.type	rand_uniform,@function
rand_uniform:                           // @rand_uniform
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	s0, [x29, #-4]
	str	s1, [sp, #8]
	ldr	s0, [sp, #8]
	ldur	s1, [x29, #-4]
	fcmp	s0, s1
	b.pl	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	ldr	w8, [sp, #4]
	str	w8, [sp, #8]
	b	.LBB0_2
.LBB0_2:
	bl	rand
	scvtf	s0, x0
	adrp	x8, RAND_MAX
	ldr	s1, [x8, :lo12:RAND_MAX]
	fdiv	s0, s0, s1
	ldr	s1, [sp, #8]
	ldur	s2, [x29, #-4]
	fsub	s1, s1, s2
	ldur	s2, [x29, #-4]
	fmadd	s0, s0, s1, s2
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	rand_uniform, .Lfunc_end0-rand_uniform
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
	.addrsig_sym rand
	.addrsig_sym RAND_MAX