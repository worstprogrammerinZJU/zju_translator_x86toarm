	.text
	.p2align	2                               // -- Begin function stbi__process_gif_raster
	.type	stbi__process_gif_raster,@function
stbi__process_gif_raster:               // @stbi__process_gif_raster
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	stur	w0, [x29, #-28]
	ldur	w8, [x29, #-28]
	subs	w8, w8, #12
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_42
.LBB0_2:
	ldur	w9, [x29, #-28]
	mov	w8, #1
	lsl	w9, w8, w9
	str	w9, [sp, #28]
	stur	w8, [x29, #-40]
	ldur	w9, [x29, #-28]
	add	w9, w9, #1
	stur	w9, [x29, #-44]
	ldur	w9, [x29, #-44]
	lsl	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #48]
	str	wzr, [sp, #36]
	str	wzr, [sp, #32]
	stur	wzr, [x29, #-36]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [x8, #8]
	ldursw	x8, [x29, #-36]
	mov	x11, #12
	mul	x10, x8, x11
	mov	w8, #-1
	str	w8, [x9, x10]
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-36]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #4]
	ldur	w8, [x29, #-36]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-36]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_3
.LBB0_6:
	ldr	w8, [sp, #28]
	add	w8, w8, #2
	str	w8, [sp, #44]
	mov	w8, #-1
	str	w8, [sp, #40]
	stur	wzr, [x29, #-32]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-32]
	cbnz	w8, .LBB0_12
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	stur	w0, [x29, #-32]
	ldur	w8, [x29, #-32]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	.LBB0_42
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-32]
	subs	w8, w8, #1
	stur	w8, [x29, #-32]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldr	w8, [sp, #32]
	lsl	w9, w0, w8
	ldr	w8, [sp, #36]
	orr	w8, w8, w9
	str	w8, [sp, #36]
	ldr	w8, [sp, #32]
	add	w8, w8, #8
	str	w8, [sp, #32]
	b	.LBB0_41
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #48]
	and	w8, w8, w9
	str	w8, [sp, #12]
	ldur	w9, [x29, #-44]
	ldr	w8, [sp, #36]
	asr	w8, w8, w9
	str	w8, [sp, #36]
	ldur	w9, [x29, #-44]
	ldr	w8, [sp, #32]
	subs	w8, w8, w9
	str	w8, [sp, #32]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w9, [x29, #-28]
	mov	w8, #1
	add	w9, w9, #1
	stur	w9, [x29, #-44]
	ldur	w9, [x29, #-44]
	lsl	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #48]
	ldr	w8, [sp, #28]
	add	w8, w8, #2
	str	w8, [sp, #44]
	mov	w8, #-1
	str	w8, [sp, #40]
	stur	wzr, [x29, #-40]
	b	.LBB0_40
.LBB0_15:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #28]
	add	w9, w9, #1
	subs	w8, w8, w9
	b.ne	.LBB0_20
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-32]
	bl	stbi__skip
	b	.LBB0_17
.LBB0_17:                               // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	stur	w0, [x29, #-32]
	subs	w8, w0, #0
	b.le	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_17 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-32]
	bl	stbi__skip
	b	.LBB0_17
.LBB0_19:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	b	.LBB0_42
.LBB0_20:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.gt	.LBB0_37
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-40]
	cbz	w8, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_42
.LBB0_23:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #40]
	tbnz	w8, #31, .LBB0_30
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #44]
	mov	w10, w9
	add	w10, w10, #1
	str	w10, [sp, #44]
	mov	x10, #12
	mul	x9, x9, x10
	add	x8, x8, x9
	str	x8, [sp, #16]
	ldr	w8, [sp, #44]
	subs	w8, w8, #2, lsl #12             // =8192
	b.le	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_42
.LBB0_26:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #40]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #40]
	mov	x10, #12
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ne	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_29
.LBB0_28:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	mov	x10, #12
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #16]
	str	w8, [x9, #8]
	b	.LBB0_33
.LBB0_30:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ne	.LBB0_32
	b	.LBB0_31
.LBB0_31:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_42
.LBB0_32:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #12]
	bl	stbi__out_gif_code
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #48]
	and	w8, w8, w9
	cbnz	w8, .LBB0_36
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #4095
	b.gt	.LBB0_36
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w9, [x29, #-44]
	mov	w8, #1
	add	w9, w9, #1
	stur	w9, [x29, #-44]
	ldur	w9, [x29, #-44]
	lsl	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	str	w8, [sp, #40]
	b	.LBB0_38
.LBB0_37:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_42
.LBB0_38:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_7
.LBB0_42:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	stbi__process_gif_raster, .Lfunc_end0-stbi__process_gif_raster
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no clear code"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt GIF"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"too many codes"
	.size	.L.str.2, 15
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"illegal code in raster"
	.size	.L.str.3, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__process_gif_raster
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__out_gif_code