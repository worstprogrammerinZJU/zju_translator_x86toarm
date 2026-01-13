	.text
	.globl	read_option                     // -- Begin function read_option
	.p2align	2
	.type	read_option,@function
read_option:                            // @read_option
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	strlen
	str	x0, [sp, #24]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	str	xzr, [sp, #32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.hs	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #61
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]
	add	x8, x8, x9
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_6
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_6:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	bl	option_insert
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_option, .Lfunc_end0-read_option
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym option_insert