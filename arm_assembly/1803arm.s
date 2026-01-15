	.text
	.p2align	2                               // -- Begin function context_to_name
	.type	context_to_name,@function
context_to_name:                        // @context_to_name
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	context_to_name, .Lfunc_end0-context_to_name
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SWR"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym context_to_name