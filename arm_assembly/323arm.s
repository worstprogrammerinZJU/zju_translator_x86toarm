	.text
	.globl	conn_less                       // -- Begin function conn_less
	.p2align	2
	.type	conn_less,@function
conn_less:                              // @conn_less
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, lt
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	conn_less, .Lfunc_end0-conn_less
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig