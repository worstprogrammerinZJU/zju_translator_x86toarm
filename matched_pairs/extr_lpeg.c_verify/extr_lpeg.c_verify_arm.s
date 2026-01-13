	.text
	.p2align	2                               // -- Begin function verify
	.type	verify,@function
verify:                                 // @verify
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #128
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	w4, [x29, #-44]
	stur	w5, [x29, #-48]
	adrp	x8, MAXBACK
	ldr	w8, [x8, :lo12:MAXBACK]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-56]
	lsl	x9, x8, #4
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x9, x9, x10
	mov	sp, x9
	stur	x9, [x29, #-96]                 // 8-byte Folded Spill
	stur	x8, [x29, #-64]
	stur	wzr, [x29, #-68]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_14 Depth 2
                                        //     Child Loop BB0_38 Depth 2
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.eq	.LBB0_50
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-104]                // 8-byte Folded Spill
	subs	x8, x8, #27
	b.hi	.LBB0_49
// %bb.3:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x11, [x29, #-104]               // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]                 // 8-byte Folded Reload
	ldur	w9, [x29, #-68]
	subs	w9, w9, #1
	stur	w9, [x29, #-68]
	add	x8, x8, w9, sxtw #4
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-68]
	adrp	x9, MAXBACK
	ldr	w9, [x9, :lo12:MAXBACK]
	subs	w8, w8, w9
	b.lt	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	w0, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_51
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-32]
	mov	w0, wzr
	bl	dest
	ldur	x9, [x29, #-96]                 // 8-byte Folded Reload
	ldursw	x10, [x29, #-68]
	mov	x8, x9
	add	x8, x8, x10, lsl #4
	str	x0, [x8, #8]
	ldursw	x8, [x29, #-68]
	mov	w10, w8
	add	w10, w10, #1
	stur	w10, [x29, #-68]
	lsl	x10, x8, #4
	adrp	x8, verify.dummy
	add	x8, x8, :lo12:verify.dummy
	str	x8, [x9, x10]
	ldur	x8, [x29, #-32]
	add	x8, x8, #24
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #32]
	subs	w8, w8, #136
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldur	w8, [x29, #-68]
	adrp	x9, MAXBACK
	ldr	w9, [x9, :lo12:MAXBACK]
	subs	w8, w8, w9
	b.lt	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	w0, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_51
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x9, [x29, #-96]                 // 8-byte Folded Reload
	ldursw	x8, [x29, #-68]
	lsl	x10, x8, #4
	mov	x8, xzr
	str	x8, [x9, x10]
	ldur	x8, [x29, #-32]
	add	x8, x8, #24
	ldursw	x10, [x29, #-68]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-68]
	add	x9, x9, x10, lsl #4
	str	x8, [x9, #8]
	b	.LBB0_30
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_37
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-76]
	b	.LBB0_14
.LBB0_14:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-68]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=2
	ldur	x8, [x29, #-96]                 // 8-byte Folded Reload
	ldursw	x9, [x29, #-76]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	cbnz	x8, .LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_14 Depth=2
	ldur	x8, [x29, #-96]                 // 8-byte Folded Reload
	ldursw	x9, [x29, #-76]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-32]
	add	x9, x9, #24
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-112]                // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-48]
	bl	val2str
	mov	w2, w0
	ldur	x0, [x29, #-112]                // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	luaL_error
	stur	w0, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_51
.LBB0_18:                               //   in Loop: Header=BB0_14 Depth=2
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_14 Depth=2
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_14
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-68]
	adrp	x9, MAXBACK
	ldr	w9, [x9, :lo12:MAXBACK]
	subs	w8, w8, w9
	b.lt	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	w0, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_51
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x9, [x29, #-96]                 // 8-byte Folded Reload
	ldursw	x8, [x29, #-68]
	lsl	x10, x8, #4
	mov	x8, xzr
	str	x8, [x9, x10]
	ldur	x8, [x29, #-32]
	add	x8, x8, #24
	ldursw	x10, [x29, #-68]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-68]
	add	x9, x9, x10, lsl #4
	str	x8, [x9, #8]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-120]                // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-44]
	ldur	x8, [x29, #-32]
	ldr	w2, [x8, #12]
	bl	getposition
	ldur	x9, [x29, #-120]                // 8-byte Folded Reload
	mov	w8, #24
	smaddl	x8, w0, w8, x9
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w9, [x29, #-68]
	mov	w8, #0
	subs	w9, w9, #0
	stur	w8, [x29, #-124]                // 4-byte Folded Spill
	b.le	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #12]
	subs	w8, w8, #0
	cset	w8, gt
	stur	w8, [x29, #-124]                // 4-byte Folded Spill
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-124]                // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	w8, [x29, #-68]
	subs	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_30
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-68]
	subs	w8, w8, #0
	cset	w8, gt
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #12]
	subs	w8, w8, #0
	b.le	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_30
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	subs	w8, w8, #0
	cset	w8, ne
	and	w0, w8, #0x1
	bl	assert
	ldur	w8, [x29, #-68]
	subs	w8, w8, #1
	stur	w8, [x29, #-68]
	ldur	x8, [x29, #-32]
	add	x8, x8, #24
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-32]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_31:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_37
.LBB0_32:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #16]
	cbz	w8, .LBB0_36
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldur	w9, [x8, #-16]
	mov	w8, #0
	subs	w9, w9, #154
	stur	w8, [x29, #-128]                // 4-byte Folded Spill
	b.ne	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldur	w8, [x8, #-12]
	subs	w8, w8, #2
	cset	w8, eq
	stur	w8, [x29, #-128]                // 4-byte Folded Spill
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-128]                // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-32]
	add	x8, x8, #24
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_36:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_38
.LBB0_38:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-68]
	subs	w9, w8, #1
	stur	w9, [x29, #-68]
	cbnz	w8, .LBB0_40
	b	.LBB0_39
.LBB0_39:
	mov	w8, #1
	stur	w8, [x29, #-4]
	stur	w8, [x29, #-72]
	b	.LBB0_51
.LBB0_40:                               //   in Loop: Header=BB0_38 Depth=2
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_38 Depth=2
	ldur	x8, [x29, #-96]                 // 8-byte Folded Reload
	ldursw	x9, [x29, #-68]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	cbz	x8, .LBB0_38
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]                 // 8-byte Folded Reload
	ldursw	x9, [x29, #-68]
	add	x8, x8, x9, lsl #4
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_43:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	bl	sizei
	ldur	x9, [x29, #-32]
	mov	w8, #24
	smaddl	x8, w0, w8, x9
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_44:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_37
.LBB0_45:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-32]
	ldr	w0, [x9, #68]
	adrp	x3, verify.dummy
	add	x3, x3, :lo12:verify.dummy
	mov	x1, x3
	mov	x2, x3
	blr	x8
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-88]
	cbnz	x8, .LBB0_47
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_37
.LBB0_47:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-32]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	b	.LBB0_1
.LBB0_48:
	b	.LBB0_49
.LBB0_49:
	mov	w0, wzr
	bl	assert
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_51
.LBB0_50:
	ldur	w8, [x29, #-68]
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-72]
	b	.LBB0_51
.LBB0_51:
	ldur	x8, [x29, #-56]
	mov	sp, x8
	ldur	w0, [x29, #-4]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	verify, .Lfunc_end0-verify
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_31-.Ltmp0
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_43-.Ltmp0
	.word	.LBB0_43-.Ltmp0
	.word	.LBB0_31-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_26-.Ltmp0
	.word	.LBB0_43-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_45-.Ltmp0
	.word	.LBB0_43-.Ltmp0
	.word	.LBB0_31-.Ltmp0
	.word	.LBB0_32-.Ltmp0
	.word	.LBB0_48-.Ltmp0
	.word	.LBB0_43-.Ltmp0
	.word	.LBB0_43-.Ltmp0
	.word	.LBB0_23-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_43-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_31-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_23-.Ltmp0
	.word	.LBB0_31-.Ltmp0
                                        // -- End function
	.type	verify.dummy,@object            // @verify.dummy
verify.dummy:
	.zero	1
	.size	verify.dummy, 1
	.type	MAXBACK,@object                 // @MAXBACK
	.bss
	.globl	MAXBACK
	.p2align	2
MAXBACK:
	.word	0                               // 0x0
	.size	MAXBACK, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many pending calls/choices"
	.size	.L.str, 31
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s is left recursive"
	.size	.L.str.1, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym verify
	.addrsig_sym luaL_error
	.addrsig_sym dest
	.addrsig_sym assert
	.addrsig_sym val2str
	.addrsig_sym getposition
	.addrsig_sym sizei
	.addrsig_sym verify.dummy
	.addrsig_sym MAXBACK