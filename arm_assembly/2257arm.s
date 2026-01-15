	.text
	.p2align	2                               // -- Begin function stbi__pic_load_core
	.type	stbi__pic_load_core,@function
stbi__pic_load_core:                    // @stbi__pic_load_core
// %bb.0:
	sub	sp, sp, #320
	stp	x29, x30, [sp, #288]            // 16-byte Folded Spill
	str	x28, [sp, #304]                 // 8-byte Folded Spill
	add	x29, sp, #288
	sub	x8, x29, #40
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8, #24]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	str	x3, [x8, #8]
	str	x4, [x8]
	stur	wzr, [x29, #-44]
	stur	wzr, [x29, #-48]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldursw	x8, [x29, #-48]
	subs	x8, x8, #10
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldursw	x9, [x29, #-48]
	mov	w10, w9
	add	w10, w10, #1
	stur	w10, [x29, #-48]
	mov	x10, #12
	mul	x10, x9, x10
	add	x9, sp, #112
	add	x9, x9, x10
	str	x9, [sp, #104]
	ldr	x0, [x8, #24]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	stur	w9, [x29, #-56]
	ldr	x0, [x8, #24]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	ldr	x10, [sp, #104]
	str	w9, [x10]
	ldr	x0, [x8, #24]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	ldr	x10, [sp, #104]
	str	w9, [x10, #4]
	ldr	x0, [x8, #24]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	ldr	x10, [sp, #104]
	str	w9, [x10, #8]
	ldr	x9, [sp, #104]
	ldr	w10, [x9, #8]
	ldur	w9, [x29, #-44]
	orr	w9, w9, w10
	stur	w9, [x29, #-44]
	ldr	x0, [x8, #24]
	bl	stbi__at_eof
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #104]
	ldr	w8, [x8]
	subs	w8, w8, #8
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-56]
	cbnz	w8, .LBB0_1
	b	.LBB0_9
.LBB0_9:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w11, [x29, #-44]
	mov	w10, #3
	mov	w8, #4
	ands	w11, w11, #0x10
	csel	w8, w8, w10, ne
	ldr	x9, [x9, #8]
	str	w8, [x9]
	stur	wzr, [x29, #-52]
	b	.LBB0_10
.LBB0_10:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_12 Depth 2
                                        //       Child Loop BB0_39 Depth 3
                                        //         Child Loop BB0_58 Depth 4
                                        //         Child Loop BB0_51 Depth 4
                                        //       Child Loop BB0_25 Depth 3
                                        //         Child Loop BB0_33 Depth 4
                                        //       Child Loop BB0_18 Depth 3
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_70
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	str	wzr, [sp, #100]
	b	.LBB0_12
.LBB0_12:                               //   Parent Loop BB0_10 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_39 Depth 3
                                        //         Child Loop BB0_58 Depth 4
                                        //         Child Loop BB0_51 Depth 4
                                        //       Child Loop BB0_25 Depth 3
                                        //         Child Loop BB0_33 Depth 4
                                        //       Child Loop BB0_18 Depth 3
	ldr	w8, [sp, #100]
	ldur	w9, [x29, #-48]
	subs	w8, w8, w9
	b.ge	.LBB0_68
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldrsw	x9, [sp, #100]
	mov	x10, #12
	mul	x10, x9, x10
	add	x9, sp, #112
	add	x9, x9, x10
	str	x9, [sp, #88]
	ldr	x8, [x8]
	ldur	w9, [x29, #-52]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	lsl	w9, w9, #2
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #80]
	ldr	x8, [sp, #88]
	ldr	w8, [x8, #4]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbz	w8, .LBB0_17
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #1
	b.eq	.LBB0_24
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #2
	b.eq	.LBB0_38
	b	.LBB0_16
.LBB0_16:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_17:                               //   in Loop: Header=BB0_12 Depth=2
	str	wzr, [sp, #76]
	b	.LBB0_18
.LBB0_18:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_12 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #76]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	x8, [sp, #88]
	ldr	w1, [x8, #8]
	ldr	x2, [sp, #80]
	bl	stbi__readval
	cbnz	w0, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	b	.LBB0_71
.LBB0_21:                               //   in Loop: Header=BB0_18 Depth=3
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_18 Depth=3
	ldr	w8, [sp, #76]
	add	w8, w8, #1
	str	w8, [sp, #76]
	ldr	x8, [sp, #80]
	add	x8, x8, #16
	str	x8, [sp, #80]
	b	.LBB0_18
.LBB0_23:                               //   in Loop: Header=BB0_12 Depth=2
	b	.LBB0_66
.LBB0_24:                               //   in Loop: Header=BB0_12 Depth=2
	ldur	w8, [x29, #-20]
	str	w8, [sp, #72]
	b	.LBB0_25
.LBB0_25:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_12 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_33 Depth 4
	ldr	w8, [sp, #72]
	subs	w8, w8, #0
	b.le	.LBB0_37
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_25 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	str	w9, [sp, #64]
	ldr	x0, [x8, #24]
	bl	stbi__at_eof
	cbz	x0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_28:                               //   in Loop: Header=BB0_25 Depth=3
	ldr	w8, [sp, #64]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	b.le	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_25 Depth=3
	ldr	w8, [sp, #72]
	str	w8, [sp, #64]
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_25 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	x8, [sp, #88]
	ldr	w1, [x8, #8]
	add	x2, sp, #48
	bl	stbi__readval
	cbnz	w0, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	b	.LBB0_71
.LBB0_32:                               //   in Loop: Header=BB0_25 Depth=3
	str	wzr, [sp, #68]
	b	.LBB0_33
.LBB0_33:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_12 Depth=2
                                        //       Parent Loop BB0_25 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #68]
	ldr	w9, [sp, #64]
	subs	w8, w8, w9
	b.ge	.LBB0_36
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_33 Depth=4
	ldr	x8, [sp, #88]
	ldr	w0, [x8, #8]
	ldr	x1, [sp, #80]
	add	x2, sp, #48
	bl	stbi__copyval
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_33 Depth=4
	ldr	w8, [sp, #68]
	add	w8, w8, #1
	str	w8, [sp, #68]
	ldr	x8, [sp, #80]
	add	x8, x8, #16
	str	x8, [sp, #80]
	b	.LBB0_33
.LBB0_36:                               //   in Loop: Header=BB0_25 Depth=3
	ldr	w9, [sp, #64]
	ldr	w8, [sp, #72]
	subs	w8, w8, w9
	str	w8, [sp, #72]
	b	.LBB0_25
.LBB0_37:                               //   in Loop: Header=BB0_12 Depth=2
	b	.LBB0_66
.LBB0_38:                               //   in Loop: Header=BB0_12 Depth=2
	ldur	w8, [x29, #-20]
	str	w8, [sp, #44]
	b	.LBB0_39
.LBB0_39:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_12 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_58 Depth 4
                                        //         Child Loop BB0_51 Depth 4
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	b.le	.LBB0_65
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	w9, w0
	str	w9, [sp, #40]
	ldr	x0, [x8, #24]
	bl	stbi__at_eof
	cbz	x0, .LBB0_42
	b	.LBB0_41
.LBB0_41:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_42:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	w8, [sp, #40]
	subs	w8, w8, #128
	b.lt	.LBB0_55
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	w8, [sp, #40]
	subs	w8, w8, #128
	b.ne	.LBB0_45
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	bl	stbi__get16be
	str	w0, [sp, #40]
	b	.LBB0_46
.LBB0_45:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	w8, [sp, #40]
	subs	w8, w8, #127
	str	w8, [sp, #40]
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.le	.LBB0_48
	b	.LBB0_47
.LBB0_47:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_48:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	x8, [sp, #88]
	ldr	w1, [x8, #8]
	add	x2, sp, #20
	bl	stbi__readval
	cbnz	w0, .LBB0_50
	b	.LBB0_49
.LBB0_49:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	b	.LBB0_71
.LBB0_50:                               //   in Loop: Header=BB0_39 Depth=3
	str	wzr, [sp, #36]
	b	.LBB0_51
.LBB0_51:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_12 Depth=2
                                        //       Parent Loop BB0_39 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_54
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_51 Depth=4
	ldr	x8, [sp, #88]
	ldr	w0, [x8, #8]
	ldr	x1, [sp, #80]
	add	x2, sp, #20
	bl	stbi__copyval
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_51 Depth=4
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	ldr	x8, [sp, #80]
	add	x8, x8, #16
	str	x8, [sp, #80]
	b	.LBB0_51
.LBB0_54:                               //   in Loop: Header=BB0_39 Depth=3
	b	.LBB0_64
.LBB0_55:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.le	.LBB0_57
	b	.LBB0_56
.LBB0_56:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	stbi__errpuc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	b	.LBB0_71
.LBB0_57:                               //   in Loop: Header=BB0_39 Depth=3
	str	wzr, [sp, #36]
	b	.LBB0_58
.LBB0_58:                               //   Parent Loop BB0_10 Depth=1
                                        //     Parent Loop BB0_12 Depth=2
                                        //       Parent Loop BB0_39 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_63
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_58 Depth=4
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	x8, [sp, #88]
	ldr	w1, [x8, #8]
	ldr	x2, [sp, #80]
	bl	stbi__readval
	cbnz	w0, .LBB0_61
	b	.LBB0_60
.LBB0_60:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	b	.LBB0_71
.LBB0_61:                               //   in Loop: Header=BB0_58 Depth=4
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_58 Depth=4
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	ldr	x8, [sp, #80]
	add	x8, x8, #16
	str	x8, [sp, #80]
	b	.LBB0_58
.LBB0_63:                               //   in Loop: Header=BB0_39 Depth=3
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_39 Depth=3
	ldr	w9, [sp, #40]
	ldr	w8, [sp, #44]
	subs	w8, w8, w9
	str	w8, [sp, #44]
	b	.LBB0_39
.LBB0_65:                               //   in Loop: Header=BB0_12 Depth=2
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_12 Depth=2
	b	.LBB0_67
.LBB0_67:                               //   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #100]
	add	w8, w8, #1
	str	w8, [sp, #100]
	b	.LBB0_12
.LBB0_68:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_69
.LBB0_69:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_10
.LBB0_70:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x9]
	str	x8, [x9, #32]
	b	.LBB0_71
.LBB0_71:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	stbi__pic_load_core, .Lfunc_end0-stbi__pic_load_core
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad format"
	.size	.L.str, 11
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"too many packets"
	.size	.L.str.1, 17
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"bad file"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"file too short (reading packets)"
	.size	.L.str.3, 33
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"packet isn't 8bpp"
	.size	.L.str.4, 18
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"packet has bad compression type"
	.size	.L.str.5, 32
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"file too short (pure read count)"
	.size	.L.str.6, 33
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"file too short (mixed read count)"
	.size	.L.str.7, 34
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"scanline overrun"
	.size	.L.str.8, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_load_core
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__readval
	.addrsig_sym stbi__copyval
	.addrsig_sym stbi__get16be