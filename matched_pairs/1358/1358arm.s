	.text
	.p2align	2                               // -- Begin function rv_alloc
	.type	rv_alloc,@function
rv_alloc:                               // @rv_alloc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	mov	w8, #4
	str	w8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	subs	w8, w8, #4
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.gt	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	lsl	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #12]
	bl	Balloc
	str	x0, [sp]
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp]
	add	x0, x8, #4
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	rv_alloc, .Lfunc_end0-rv_alloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rv_alloc
	.addrsig_sym Balloc