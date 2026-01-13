	.text
	.p2align	2                               // -- Begin function do_make_vector
	.type	do_make_vector,@function
do_make_vector:                         // @do_make_vector
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	mov	w0, #24
	bl	malloc
	str	x0, [sp]
	ldur	w0, [x29, #-4]
	bl	roundup
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldursw	x9, [x29, #-4]
	mov	x8, #8
	mul	x8, x8, x9
	mov	w0, w8
	bl	malloc
	ldr	x8, [sp]
	str	x0, [x8, #16]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp]
	str	xzr, [x8, #8]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	do_make_vector, .Lfunc_end0-do_make_vector
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector
	.addrsig_sym malloc
	.addrsig_sym roundup