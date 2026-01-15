	.text
	.p2align	2                               // -- Begin function stbi__err
	.type	stbi__err,@function
stbi__err:                              // @stbi__err
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, stbi__g_failure_reason
	str	x8, [x9, :lo12:stbi__g_failure_reason]
	mov	w0, wzr
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__err, .Lfunc_end0-stbi__err
                                        // -- End function
	.type	stbi__g_failure_reason,@object  // @stbi__g_failure_reason
	.bss
	.globl	stbi__g_failure_reason
	.p2align	3
stbi__g_failure_reason:
	.xword	0
	.size	stbi__g_failure_reason, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__err
	.addrsig_sym stbi__g_failure_reason