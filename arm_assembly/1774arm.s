	.text
	.globl	reset_rnn                       // -- Begin function reset_rnn
	.p2align	2
	.type	reset_rnn,@function
reset_rnn:                              // @reset_rnn
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	mov	w1, wzr
	bl	reset_network_state
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	reset_rnn, .Lfunc_end0-reset_rnn
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym reset_network_state