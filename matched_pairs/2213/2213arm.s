	.text
	.p2align	2                               // -- Begin function stbi__hdr_convert
	.type	stbi__hdr_convert,@function
stbi__hdr_convert:                      // @stbi__hdr_convert
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #12]
	cbz	w8, .LBB0_9
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #12]
	subs	w0, w8, #136
	fmov	s0, #1.00000000
	bl	ldexp
	scvtf	s0, x0
	str	s0, [sp, #8]
	ldr	w8, [sp, #12]
	subs	w8, w8, #2
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #4]
	add	w8, w8, w9
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #8]
	add	w8, w8, w9
	scvtf	s0, w8
	ldr	s1, [sp, #8]
	fmul	s0, s0, s1
	fmov	s1, #3.00000000
	fdiv	s0, s0, s1
	ldur	x8, [x29, #-8]
	str	s0, [x8]
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	s0, [x8]
	scvtf	s0, s0
	ldr	s1, [sp, #8]
	fmul	s0, s0, s1
	ldur	x8, [x29, #-8]
	str	s0, [x8]
	ldr	x8, [sp, #16]
	ldr	s0, [x8, #4]
	scvtf	s0, s0
	ldr	s1, [sp, #8]
	fmul	s0, s0, s1
	ldur	x8, [x29, #-8]
	str	s0, [x8, #4]
	ldr	x8, [sp, #16]
	ldr	s0, [x8, #8]
	scvtf	s0, s0
	ldr	s1, [sp, #8]
	fmul	s0, s0, s1
	ldur	x8, [x29, #-8]
	str	s0, [x8, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #12]
	subs	w8, w8, #2
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-8]
	fmov	s0, #1.00000000
	str	s0, [x8, #4]
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #12]
	subs	w8, w8, #4
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-8]
	fmov	s0, #1.00000000
	str	s0, [x8, #12]
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_16
.LBB0_9:
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_15
// %bb.10:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_11:
	ldur	x8, [x29, #-8]
	fmov	s0, #1.00000000
	str	s0, [x8, #12]
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-8]
	movi	d0, #0000000000000000
	str	s0, [x8, #8]
	ldur	x8, [x29, #-8]
	str	s0, [x8, #4]
	ldur	x8, [x29, #-8]
	str	s0, [x8]
	b	.LBB0_15
.LBB0_13:
	ldur	x8, [x29, #-8]
	fmov	s0, #1.00000000
	str	s0, [x8, #4]
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-8]
	movi	d0, #0000000000000000
	str	s0, [x8]
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__hdr_convert, .Lfunc_end0-stbi__hdr_convert
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_11-.Ltmp0
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_convert
	.addrsig_sym ldexp