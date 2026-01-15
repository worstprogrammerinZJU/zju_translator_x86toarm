	.text
	.globl	td3                             // -- Begin function td3
	.p2align	2
	.type	td3,@function
td3:                                    // @td3
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	s1, [sp, #12]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	td3, .Lfunc_end0-td3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig