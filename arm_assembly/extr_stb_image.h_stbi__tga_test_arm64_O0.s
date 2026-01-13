	.text
	.p2align	2                               // -- Begin function stbi__tga_test
	.type	stbi__tga_test,@function
stbi__tga_test:                         // @stbi__tga_test
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_34
.LBB0_2:
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	str	w0, [sp, #16]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	b.ne	.LBB0_13
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #16]
	subs	w8, w8, #1
	b.eq	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #16]
	subs	w8, w8, #9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_34
.LBB0_6:
	ldur	x0, [x29, #-8]
	mov	w1, #4
	bl	stbi__skip
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #8
	b.eq	.LBB0_12
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #16]
	subs	w8, w8, #15
	b.eq	.LBB0_12
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #16]
	subs	w8, w8, #16
	b.eq	.LBB0_12
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #16]
	subs	w8, w8, #24
	b.eq	.LBB0_12
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #16]
	subs	w8, w8, #32
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_34
.LBB0_12:
	ldur	x0, [x29, #-8]
	mov	w1, #4
	bl	stbi__skip
	b	.LBB0_19
.LBB0_13:
	ldr	w8, [sp, #16]
	subs	w8, w8, #2
	b.eq	.LBB0_18
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #16]
	subs	w8, w8, #3
	b.eq	.LBB0_18
	b	.LBB0_15
.LBB0_15:
	ldr	w8, [sp, #16]
	subs	w8, w8, #10
	b.eq	.LBB0_18
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #16]
	subs	w8, w8, #11
	b.eq	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_34
.LBB0_18:
	ldur	x0, [x29, #-8]
	mov	w1, #9
	bl	stbi__skip
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-8]
	bl	stbi__get16le
	subs	w8, w0, #1
	b.ge	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	b	.LBB0_34
.LBB0_21:
	ldur	x0, [x29, #-8]
	bl	stbi__get16le
	subs	w8, w0, #1
	b.ge	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	b	.LBB0_34
.LBB0_23:
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	str	w0, [sp, #16]
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	b.ne	.LBB0_27
	b	.LBB0_24
.LBB0_24:
	ldr	w8, [sp, #16]
	subs	w8, w8, #8
	b.eq	.LBB0_27
	b	.LBB0_25
.LBB0_25:
	ldr	w8, [sp, #16]
	subs	w8, w8, #16
	b.eq	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_34
.LBB0_27:
	ldr	w8, [sp, #16]
	subs	w8, w8, #8
	b.eq	.LBB0_33
	b	.LBB0_28
.LBB0_28:
	ldr	w8, [sp, #16]
	subs	w8, w8, #15
	b.eq	.LBB0_33
	b	.LBB0_29
.LBB0_29:
	ldr	w8, [sp, #16]
	subs	w8, w8, #16
	b.eq	.LBB0_33
	b	.LBB0_30
.LBB0_30:
	ldr	w8, [sp, #16]
	subs	w8, w8, #24
	b.eq	.LBB0_33
	b	.LBB0_31
.LBB0_31:
	ldr	w8, [sp, #16]
	subs	w8, w8, #32
	b.eq	.LBB0_33
	b	.LBB0_32
.LBB0_32:
	b	.LBB0_34
.LBB0_33:
	mov	w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_34
.LBB0_34:
	ldur	x0, [x29, #-8]
	bl	stbi__rewind
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__tga_test, .Lfunc_end0-stbi__tga_test
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_test
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__rewind