	.text
	.p2align	2                               // -- Begin function next
	.type	next,@function
next:                                   // @next
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	bl	lex
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	w1, [sp, #8]
	bl	is_keyword
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp]
	bl	unget_token
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	next, .Lfunc_end0-next
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym next
	.addrsig_sym lex
	.addrsig_sym is_keyword
	.addrsig_sym unget_token