	.text
	.p2align	2                               // -- Begin function nrv_alloc
	.type	nrv_alloc,@function
nrv_alloc:                              // @nrv_alloc
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #20]
	bl	rv_alloc
	mov	x8, x0
	str	x8, [sp, #8]
	str	x0, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	add	x9, x8, #1
	stur	x9, [x29, #-16]
	ldrb	w8, [x8]
	ldr	x9, [sp]
	strb	w8, [x9]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	.LBB0_1
.LBB0_3:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	nrv_alloc, .Lfunc_end0-nrv_alloc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nrv_alloc
	.addrsig_sym rv_alloc