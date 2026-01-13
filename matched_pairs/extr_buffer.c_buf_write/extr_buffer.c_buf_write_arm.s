	.text
	.globl	buf_write                       // -- Begin function buf_write
	.p2align	2
	.type	buf_write,@function
buf_write:                              // @buf_write
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	add	x9, x9, #1
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	realloc_body
	b	.LBB0_2
.LBB0_2:
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	ldr	x12, [sp, #8]
	ldr	x10, [x12, #8]
	add	x11, x10, #1
	str	x11, [x12, #8]
	add	x9, x9, x10
	strb	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	buf_write, .Lfunc_end0-buf_write
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc_body