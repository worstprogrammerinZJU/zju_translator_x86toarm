	.text
	.globl	t10                             // -- Begin function t10
	.p2align	2
	.type	t10,@function
t10:                                    // @t10
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	d0, [sp]
	ldr	s1, [sp, #12]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	d1, [sp]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	t10, .Lfunc_end0-t10
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig