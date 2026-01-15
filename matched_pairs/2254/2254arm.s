	.text
	.p2align	2                               // -- Begin function stbi__pic_info
	.type	stbi__pic_info,@function
stbi__pic_info:                         // @stbi__pic_info
// %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #224
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	wzr, [x29, #-44]
	stur	wzr, [x29, #-48]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	sub	x8, x29, #56
	stur	x8, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	sub	x8, x29, #56
	stur	x8, [x29, #-32]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-40]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	sub	x8, x29, #56
	stur	x8, [x29, #-40]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	stbi__pic_is4
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_23
.LBB0_8:
	ldur	x0, [x29, #-16]
	mov	w1, #88
	bl	stbi__skip
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	ldur	x8, [x29, #-24]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	ldur	x8, [x29, #-32]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__at_eof
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_23
.LBB0_10:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	cbz	w8, .LBB0_13
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-24]
	ldr	w9, [x8]
	mov	w8, #268435456
	sdiv	w8, w8, w9
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_23
.LBB0_13:
	ldur	x0, [x29, #-16]
	mov	w1, #8
	bl	stbi__skip
	b	.LBB0_14
.LBB0_14:                               // =>This Inner Loop Header: Depth=1
	ldursw	x8, [x29, #-48]
	subs	x8, x8, #10
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	stur	wzr, [x29, #-4]
	b	.LBB0_23
.LBB0_16:                               //   in Loop: Header=BB0_14 Depth=1
	ldursw	x9, [x29, #-48]
	mov	w8, w9
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	add	x8, sp, #8
	add	x8, x8, x9, lsl #4
	str	x8, [sp]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	stur	w8, [x29, #-52]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	ldr	x9, [sp]
	str	w8, [x9]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldr	x8, [sp]
	str	x0, [x8, #8]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	ldr	x9, [sp]
	str	w8, [x9, #4]
	ldr	x8, [sp]
	ldr	w9, [x8, #4]
	ldur	w8, [x29, #-44]
	orr	w8, w8, w9
	stur	w8, [x29, #-44]
	ldur	x0, [x29, #-16]
	bl	stbi__at_eof
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_23
.LBB0_18:                               //   in Loop: Header=BB0_14 Depth=1
	ldr	x8, [sp]
	ldr	w8, [x8]
	subs	w8, w8, #8
	b.eq	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_23
.LBB0_20:                               //   in Loop: Header=BB0_14 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_14 Depth=1
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_14
	b	.LBB0_22
.LBB0_22:
	ldur	w10, [x29, #-44]
	mov	w9, #3
	mov	w8, #4
	ands	w10, w10, #0x10
	csel	w8, w8, w9, ne
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_23
.LBB0_23:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #224]            // 16-byte Folded Reload
	add	sp, sp, #240
	ret
.Lfunc_end0:
	.size	stbi__pic_info, .Lfunc_end0-stbi__pic_info
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"S\200\3664"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_info
	.addrsig_sym stbi__pic_is4
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__get8