	.text
	.globl	srvaccept                       // -- Begin function srvaccept
	.p2align	2
	.type	srvaccept,@function
srvaccept:                              // @srvaccept
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	w1, [sp, #4]
	ldr	x2, [sp, #8]
	bl	h_accept
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	srvaccept, .Lfunc_end0-srvaccept
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym h_accept