	.text
	.p2align	2                               // -- Begin function stbi__tga_info
	.type	stbi__tga_info,@function
stbi__tga_info:                         // @stbi__tga_info
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	str	w0, [sp, #24]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	b.ne	.LBB0_13
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]
	subs	w8, w8, #1
	b.eq	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #24]
	subs	w8, w8, #9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_6:
	ldur	x0, [x29, #-16]
	mov	w1, #4
	bl	stbi__skip
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #8
	b.eq	.LBB0_12
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #12]
	subs	w8, w8, #15
	b.eq	.LBB0_12
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #12]
	subs	w8, w8, #16
	b.eq	.LBB0_12
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #12]
	subs	w8, w8, #24
	b.eq	.LBB0_12
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #12]
	subs	w8, w8, #32
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_12:
	ldur	x0, [x29, #-16]
	mov	w1, #4
	bl	stbi__skip
	ldr	w8, [sp, #12]
	str	w8, [sp, #16]
	b	.LBB0_19
.LBB0_13:
	ldr	w8, [sp, #24]
	subs	w8, w8, #2
	b.eq	.LBB0_18
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #24]
	subs	w8, w8, #3
	b.eq	.LBB0_18
	b	.LBB0_15
.LBB0_15:
	ldr	w8, [sp, #24]
	subs	w8, w8, #10
	b.eq	.LBB0_18
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #24]
	subs	w8, w8, #11
	b.eq	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_18:
	ldur	x0, [x29, #-16]
	mov	w1, #9
	bl	stbi__skip
	str	wzr, [sp, #16]
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	str	w0, [sp, #36]
	ldr	w8, [sp, #36]
	subs	w8, w8, #1
	b.ge	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_21:
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	str	w0, [sp, #32]
	ldr	w8, [sp, #32]
	subs	w8, w8, #1
	b.ge	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_23:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	str	w0, [sp, #20]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_28
	b	.LBB0_24
.LBB0_24:
	ldr	w8, [sp, #20]
	subs	w8, w8, #8
	b.eq	.LBB0_27
	b	.LBB0_25
.LBB0_25:
	ldr	w8, [sp, #20]
	subs	w8, w8, #16
	b.eq	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_27:
	ldr	w0, [sp, #16]
	mov	w1, wzr
	mov	x2, xzr
	bl	stbi__tga_get_comp
	str	w0, [sp, #28]
	b	.LBB0_31
.LBB0_28:
	ldr	w8, [sp, #20]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	w9, [sp, #24]
	mov	w8, #1
	subs	w9, w9, #3
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldr	w8, [sp, #24]
	subs	w8, w8, #11
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_30
.LBB0_30:
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w1, w8, #0x1
	mov	x2, xzr
	bl	stbi__tga_get_comp
	str	w0, [sp, #28]
	b	.LBB0_31
.LBB0_31:
	ldr	w8, [sp, #28]
	cbnz	w8, .LBB0_33
	b	.LBB0_32
.LBB0_32:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_40
.LBB0_33:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	ldr	w8, [sp, #36]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	b	.LBB0_35
.LBB0_35:
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_37
	b	.LBB0_36
.LBB0_36:
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	b	.LBB0_37
.LBB0_37:
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_39
	b	.LBB0_38
.LBB0_38:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	.LBB0_39
.LBB0_39:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_40
.LBB0_40:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	stbi__tga_info, .Lfunc_end0-stbi__tga_info
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_info
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__tga_get_comp