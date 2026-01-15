	.text
	.globl	quote_cstring                   // -- Begin function quote_cstring
	.p2align	2
	.type	quote_cstring,@function
quote_cstring:                          // @quote_cstring
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	bl	make_buffer
	str	x0, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	add	x9, x8, #1
	str	x9, [sp, #8]
	ldrb	w1, [x8]
	bl	print
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp]
	bl	buf_body
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	quote_cstring, .Lfunc_end0-quote_cstring
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_buffer
	.addrsig_sym print
	.addrsig_sym buf_body