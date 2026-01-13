	.text
	.p2align	2                               // -- Begin function read_declarator_tail
	.type	read_declarator_tail,@function
read_declarator_tail:                   // @read_declarator_tail
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	mov	w0, #91
	bl	next_token
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	read_declarator_array
	stur	x0, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	mov	w0, #40
	bl	next_token
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	read_declarator_func
	stur	x0, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_declarator_tail, .Lfunc_end0-read_declarator_tail
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_tail
	.addrsig_sym next_token
	.addrsig_sym read_declarator_array
	.addrsig_sym read_declarator_func