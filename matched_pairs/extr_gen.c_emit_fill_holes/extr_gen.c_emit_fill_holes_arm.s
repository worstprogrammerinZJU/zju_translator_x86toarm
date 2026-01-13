	.text
	.p2align	2                               // -- Begin function emit_fill_holes
	.type	emit_fill_holes,@function
emit_fill_holes:                        // @emit_fill_holes
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	vec_len
	stur	w0, [x29, #-20]
	ldursw	x8, [x29, #-20]
	lsl	x8, x8, #3
	mov	w0, w8
	bl	malloc
	str	x0, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #28]
	bl	vec_get
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #28]
	str	x0, [x8, x9, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #32]
	ldur	w1, [x29, #-20]
	adrp	x8, cmpinit
	ldr	w3, [x8, :lo12:cmpinit]
	mov	w2, #8
	bl	qsort
	str	wzr, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	add	w0, w8, w9
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldur	w9, [x29, #-12]
	add	w1, w8, w9
	bl	emit_zero_filler
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	ldr	w9, [x9]
	add	w8, w8, w9
	str	w8, [sp, #24]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_10:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	add	w0, w8, w9
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	add	w1, w8, w9
	bl	emit_zero_filler
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	emit_fill_holes, .Lfunc_end0-emit_fill_holes
                                        // -- End function
	.type	cmpinit,@object                 // @cmpinit
	.bss
	.globl	cmpinit
	.p2align	2
cmpinit:
	.word	0                               // 0x0
	.size	cmpinit, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_fill_holes
	.addrsig_sym vec_len
	.addrsig_sym malloc
	.addrsig_sym vec_get
	.addrsig_sym qsort
	.addrsig_sym emit_zero_filler
	.addrsig_sym cmpinit