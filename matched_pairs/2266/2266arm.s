	.text
	.p2align	2                               // -- Begin function stbi__pnm_info
	.type	stbi__pnm_info,@function
stbi__pnm_info:                         // @stbi__pnm_info
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	add	x8, sp, #16
	stur	x8, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	add	x8, sp, #16
	str	x8, [sp, #32]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	add	x8, sp, #16
	str	x8, [sp, #24]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	strb	w8, [sp, #14]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	strb	w8, [sp, #13]
	ldrb	w8, [sp, #14]
	subs	w8, w8, #80
	b.ne	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldrb	w8, [sp, #13]
	subs	w8, w8, #53
	b.eq	.LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldrb	w8, [sp, #13]
	subs	w8, w8, #54
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_10:
	ldrb	w9, [sp, #13]
	mov	w8, #3
	subs	w9, w9, #54
	csinc	w8, w8, wzr, eq
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	add	x1, sp, #15
	str	x1, [sp]                        // 8-byte Folded Spill
	mov	w8, w0
	strb	w8, [sp, #15]
	ldur	x0, [x29, #-16]
	bl	stbi__pnm_skip_whitespace
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__pnm_getinteger
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__pnm_skip_whitespace
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__pnm_getinteger
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #32]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__pnm_skip_whitespace
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__pnm_getinteger
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #255
	b.le	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_13
.LBB0_12:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__pnm_info, .Lfunc_end0-stbi__pnm_info
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"max value > 255"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"PPM image not 8-bit"
	.size	.L.str.1, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_info
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__pnm_skip_whitespace
	.addrsig_sym stbi__pnm_getinteger
	.addrsig_sym stbi__err