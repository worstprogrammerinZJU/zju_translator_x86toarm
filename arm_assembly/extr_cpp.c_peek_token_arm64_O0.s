	.text
	.globl	peek_token                      // -- Begin function peek_token
	.p2align	2
	.type	peek_token,@function
peek_token:                             // @peek_token
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_token
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	unget_token
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	peek_token, .Lfunc_end0-peek_token
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_token
	.addrsig_sym unget_token