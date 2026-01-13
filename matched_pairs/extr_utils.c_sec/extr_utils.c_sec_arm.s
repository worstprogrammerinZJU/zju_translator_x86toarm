	.text
	.globl	sec                             // -- Begin function sec
	.p2align	2
	.type	sec,@function
sec:                                    // @sec
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	d0, [sp, #8]
	fmov	x8, d0
	scvtf	s0, x8
	adrp	x8, CLOCKS_PER_SEC
	ldr	s1, [x8, :lo12:CLOCKS_PER_SEC]
	fdiv	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	sec, .Lfunc_end0-sec
                                        // -- End function
	.type	CLOCKS_PER_SEC,@object          // @CLOCKS_PER_SEC
	.bss
	.globl	CLOCKS_PER_SEC
	.p2align	2
CLOCKS_PER_SEC:
	.word	0x00000000                      // float 0
	.size	CLOCKS_PER_SEC, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CLOCKS_PER_SEC