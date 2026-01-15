	.text
	.globl	quote_cstring_len               // -- Begin function quote_cstring_len
	.p2align	2
	.type	quote_cstring_len,@function
quote_cstring_len:                      // @quote_cstring_len
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	make_buffer
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #4]
	ldrb	w1, [x8, x9]
	bl	print
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	buf_body
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	quote_cstring_len, .Lfunc_end0-quote_cstring_len
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_buffer
	.addrsig_sym print
	.addrsig_sym buf_body