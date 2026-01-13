	.text
	.globl	error                           // -- Begin function error
	.p2align	2
	.type	error,@function
error:                                  // @error
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	perror
	mov	w0, wzr
	bl	assert
	mov	w0, #-1
	bl	exit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	error, .Lfunc_end0-error
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym perror
	.addrsig_sym assert
	.addrsig_sym exit