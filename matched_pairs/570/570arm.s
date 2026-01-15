	.text
	.globl	node2s                          // -- Begin function node2s
	.p2align	2
	.type	node2s,@function
node2s:                                 // @node2s
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	bl	make_buffer
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	do_node2s
	ldr	x0, [sp]
	bl	buf_body
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	node2s, .Lfunc_end0-node2s
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_buffer
	.addrsig_sym do_node2s
	.addrsig_sym buf_body