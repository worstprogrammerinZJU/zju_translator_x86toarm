	.text
	.p2align	2                               // -- Begin function stbi__hdr_test_core
	.type	stbi__hdr_test_core,@function
stbi__hdr_test_core:                    // @stbi__hdr_test_core
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	add	x8, x8, x9
	ldrb	w8, [x8]
	cbz	w8, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	bl	stbi__get8
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #4]
	ldrb	w8, [x8, x9]
	subs	w8, w8, w0, uxtb
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_6:
	ldr	x0, [sp, #16]
	bl	stbi__rewind
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__hdr_test_core, .Lfunc_end0-stbi__hdr_test_core
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_test_core
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__rewind