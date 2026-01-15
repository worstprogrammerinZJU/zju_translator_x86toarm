	.text
	.globl	map_len                         // -- Begin function map_len
	.p2align	2
	.type	map_len,@function
map_len:                                // @map_len
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	map_len, .Lfunc_end0-map_len
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig