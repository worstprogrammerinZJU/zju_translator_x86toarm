	.text
	.p2align	2                               // -- Begin function stbi__grow_buffer_unsafe
	.type	stbi__grow_buffer_unsafe,@function
stbi__grow_buffer_unsafe:               // @stbi__grow_buffer_unsafe
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	mov	x8, xzr
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	bl	stbi__get8
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #255
	b.ne	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #16]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #16]
	subs	w8, w8, #255
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=2
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #16]
	b	.LBB0_6
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	strb	w8, [x9, #8]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #4]
	b	.LBB0_13
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	ldr	w10, [x9]
	mov	w9, #24
	subs	w9, w9, w10
	lsl	w10, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #12]
	orr	w8, w8, w10
	str	w8, [x9, #12]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	add	w8, w8, #8
	str	w8, [x9]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #24
	b.le	.LBB0_1
	b	.LBB0_13
.LBB0_13:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__grow_buffer_unsafe, .Lfunc_end0-stbi__grow_buffer_unsafe
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi__get8