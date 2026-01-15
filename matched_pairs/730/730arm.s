	.text
	.globl	dict_keys                       // -- Begin function dict_keys
	.p2align	2
	.type	dict_keys,@function
dict_keys:                              // @dict_keys
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	dict_keys, .Lfunc_end0-dict_keys
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig