	.text
	.p2align	2                               // -- Begin function yysyntax_error
	.type	yysyntax_error,@function
yysyntax_error:                         // @yysyntax_error
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	sub	x8, x29, #24
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	str	x0, [x8, #8]
	str	x1, [x8]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	adrp	x8, YY_NULLPTR
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldr	x0, [x8, :lo12:YY_NULLPTR]
	adrp	x8, yytname
	ldr	x8, [x8, :lo12:yytname]
	ldursw	x9, [x29, #-36]
	ldr	x1, [x8, x9, lsl #3]
	bl	yytnamerr
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	stur	x0, [x29, #-48]
	ldur	x9, [x29, #-48]
	stur	x9, [x29, #-56]
	ldr	x8, [x8, :lo12:YY_NULLPTR]
	stur	x8, [x29, #-64]
	str	wzr, [sp, #100]
	ldur	w8, [x29, #-36]
	adrp	x9, YYEMPTY
	ldr	w9, [x9, :lo12:YYEMPTY]
	subs	w8, w8, w9
	b.eq	.LBB0_24
	b	.LBB0_1
.LBB0_1:
	adrp	x8, yypact
	ldr	x8, [x8, :lo12:yypact]
	ldur	x9, [x29, #-32]
	ldr	x9, [x9]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #96]
	adrp	x8, yytname
	ldr	x8, [x8, :lo12:yytname]
	ldursw	x9, [x29, #-36]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x10, [sp, #100]
	mov	w9, w10
	add	w9, w9, #1
	str	w9, [sp, #100]
	add	x9, sp, #104
	str	x8, [x9, x10, lsl #3]
	ldr	w0, [sp, #96]
	bl	yypact_value_is_default
	cbnz	w0, .LBB0_23
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #96]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w9, [sp, #96]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	mov	w8, wzr
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	str	w8, [sp, #92]
	adrp	x8, YYLAST
	ldr	w8, [x8, :lo12:YYLAST]
	ldr	w9, [sp, #96]
	subs	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #88]
	ldr	w8, [sp, #88]
	adrp	x9, YYNTOKENS
	ldr	w9, [x9, :lo12:YYNTOKENS]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #88]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	adrp	x8, YYNTOKENS
	ldr	w8, [x8, :lo12:YYNTOKENS]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	str	w8, [sp, #84]
	ldr	w8, [sp, #92]
	str	w8, [sp, #80]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #80]
	ldr	w9, [sp, #84]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	adrp	x8, yycheck
	ldr	x8, [x8, :lo12:yycheck]
	ldr	w9, [sp, #80]
	ldr	w10, [sp, #96]
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #80]
	subs	w8, w8, w9
	b.ne	.LBB0_20
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #80]
	adrp	x9, YYTERROR
	ldr	w9, [x9, :lo12:YYTERROR]
	subs	w8, w8, w9
	b.eq	.LBB0_20
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	adrp	x8, yytable
	ldr	x8, [x8, :lo12:yytable]
	ldr	w9, [sp, #80]
	ldr	w10, [sp, #96]
	add	w9, w9, w10
	ldr	w0, [x8, w9, sxtw #2]
	bl	yytable_value_is_error
	cbnz	w0, .LBB0_20
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #100]
	subs	w8, w8, #5
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	mov	w8, #1
	str	w8, [sp, #100]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-56]
	b	.LBB0_22
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=1
	adrp	x8, yytname
	ldr	x9, [x8, :lo12:yytname]
	ldrsw	x10, [sp, #80]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x11, [sp, #100]
	mov	w10, w11
	add	w10, w10, #1
	str	w10, [sp, #100]
	add	x10, sp, #104
	str	x9, [x10, x11, lsl #3]
	ldur	x9, [x29, #-56]
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	adrp	x9, YY_NULLPTR
	ldr	x0, [x9, :lo12:YY_NULLPTR]
	ldr	x8, [x8, :lo12:yytname]
	ldrsw	x9, [sp, #80]
	ldr	x1, [x8, x9, lsl #3]
	bl	yytnamerr
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	add	x8, x8, x0
	str	x8, [sp, #72]
	ldur	x8, [x29, #-56]
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	b.gt	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #72]
	adrp	x9, YYSTACK_ALLOC_MAXIMUM
	ldr	x9, [x9, :lo12:YYSTACK_ALLOC_MAXIMUM]
	subs	x8, x8, x9
	b.gt	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-56]
	b	.LBB0_19
.LBB0_18:
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_19:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #80]
	add	w8, w8, #1
	str	w8, [sp, #80]
	b	.LBB0_9
.LBB0_22:
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	ldr	w8, [sp, #100]
	subs	w8, w8, #0
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #5
	b.hi	.LBB0_26
// %bb.25:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_26:
	b	.LBB0_27
.LBB0_27:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-64]
	b	.LBB0_33
.LBB0_28:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	YY_
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-64]
	b	.LBB0_33
.LBB0_29:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	YY_
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-64]
	b	.LBB0_33
.LBB0_30:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	YY_
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-64]
	b	.LBB0_33
.LBB0_31:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	YY_
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-64]
	b	.LBB0_33
.LBB0_32:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	YY_
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	stur	x8, [x29, #-64]
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-56]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-64]
	bl	yystrlen
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	x8, x8, x0
	str	x8, [sp, #64]
	ldur	x8, [x29, #-56]
	ldr	x9, [sp, #64]
	subs	x8, x8, x9
	b.gt	.LBB0_36
	b	.LBB0_34
.LBB0_34:
	ldr	x8, [sp, #64]
	adrp	x9, YYSTACK_ALLOC_MAXIMUM
	ldr	x9, [x9, :lo12:YYSTACK_ALLOC_MAXIMUM]
	subs	x8, x8, x9
	b.gt	.LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-56]
	b	.LBB0_37
.LBB0_36:
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_37:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-56]
	subs	x8, x8, x9
	b.ge	.LBB0_42
	b	.LBB0_38
.LBB0_38:
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldur	x10, [x29, #-56]
	mov	x8, #2
	mul	x8, x8, x10
	ldr	x10, [x9, #8]
	str	x8, [x10]
	ldur	x8, [x29, #-56]
	ldr	x9, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.gt	.LBB0_40
	b	.LBB0_39
.LBB0_39:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, YYSTACK_ALLOC_MAXIMUM
	ldr	x9, [x9, :lo12:YYSTACK_ALLOC_MAXIMUM]
	subs	x8, x8, x9
	b.le	.LBB0_41
	b	.LBB0_40
.LBB0_40:
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	adrp	x8, YYSTACK_ALLOC_MAXIMUM
	ldr	x8, [x8, :lo12:YYSTACK_ALLOC_MAXIMUM]
	ldr	x9, [x9, #8]
	str	x8, [x9]
	b	.LBB0_41
.LBB0_41:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_42:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x8, [x8]
	str	x8, [sp, #56]
	str	wzr, [sp, #52]
	b	.LBB0_43
.LBB0_43:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-64]
	ldrb	w8, [x8]
	ldr	x9, [sp, #56]
	strb	w8, [x9]
	cbz	w8, .LBB0_50
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_43 Depth=1
	ldr	x8, [sp, #56]
	ldrb	w8, [x8]
	subs	w8, w8, #37
	b.ne	.LBB0_48
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_43 Depth=1
	ldur	x8, [x29, #-64]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #115
	b.ne	.LBB0_48
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_43 Depth=1
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #100]
	subs	w8, w8, w9
	b.ge	.LBB0_48
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_43 Depth=1
	ldr	x0, [sp, #56]
	ldrsw	x9, [sp, #52]
	mov	w8, w9
	add	w8, w8, #1
	str	w8, [sp, #52]
	add	x8, sp, #104
	ldr	x1, [x8, x9, lsl #3]
	bl	yytnamerr
	ldr	x8, [sp, #56]
	add	x8, x8, x0
	str	x8, [sp, #56]
	ldur	x8, [x29, #-64]
	add	x8, x8, #2
	stur	x8, [x29, #-64]
	b	.LBB0_49
.LBB0_48:                               //   in Loop: Header=BB0_43 Depth=1
	ldr	x8, [sp, #56]
	add	x8, x8, #1
	str	x8, [sp, #56]
	ldur	x8, [x29, #-64]
	add	x8, x8, #1
	stur	x8, [x29, #-64]
	b	.LBB0_49
.LBB0_49:                               //   in Loop: Header=BB0_43 Depth=1
	b	.LBB0_43
.LBB0_50:
	stur	wzr, [x29, #-4]
	b	.LBB0_51
.LBB0_51:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	yysyntax_error, .Lfunc_end0-yysyntax_error
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_27-.Ltmp0
	.word	.LBB0_28-.Ltmp0
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_30-.Ltmp0
	.word	.LBB0_31-.Ltmp0
	.word	.LBB0_32-.Ltmp0
                                        // -- End function
	.type	YY_NULLPTR,@object              // @YY_NULLPTR
	.bss
	.globl	YY_NULLPTR
	.p2align	3
YY_NULLPTR:
	.xword	0
	.size	YY_NULLPTR, 8
	.type	yytname,@object                 // @yytname
	.globl	yytname
	.p2align	3
yytname:
	.xword	0
	.size	yytname, 8
	.type	YYEMPTY,@object                 // @YYEMPTY
	.globl	YYEMPTY
	.p2align	2
YYEMPTY:
	.word	0                               // 0x0
	.size	YYEMPTY, 4
	.type	yypact,@object                  // @yypact
	.globl	yypact
	.p2align	3
yypact:
	.xword	0
	.size	yypact, 8
	.type	YYLAST,@object                  // @YYLAST
	.globl	YYLAST
	.p2align	2
YYLAST:
	.word	0                               // 0x0
	.size	YYLAST, 4
	.type	YYNTOKENS,@object               // @YYNTOKENS
	.globl	YYNTOKENS
	.p2align	2
YYNTOKENS:
	.word	0                               // 0x0
	.size	YYNTOKENS, 4
	.type	yycheck,@object                 // @yycheck
	.globl	yycheck
	.p2align	3
yycheck:
	.xword	0
	.size	yycheck, 8
	.type	YYTERROR,@object                // @YYTERROR
	.globl	YYTERROR
	.p2align	2
YYTERROR:
	.word	0                               // 0x0
	.size	YYTERROR, 4
	.type	yytable,@object                 // @yytable
	.globl	yytable
	.p2align	3
yytable:
	.xword	0
	.size	yytable, 8
	.type	YYSTACK_ALLOC_MAXIMUM,@object   // @YYSTACK_ALLOC_MAXIMUM
	.globl	YYSTACK_ALLOC_MAXIMUM
	.p2align	3
YYSTACK_ALLOC_MAXIMUM:
	.xword	0                               // 0x0
	.size	YYSTACK_ALLOC_MAXIMUM, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"syntax error"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"syntax error, unexpected %s"
	.size	.L.str.1, 28
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"syntax error, unexpected %s, expecting %s"
	.size	.L.str.2, 42
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"syntax error, unexpected %s, expecting %s or %s"
	.size	.L.str.3, 48
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"syntax error, unexpected %s, expecting %s or %s or %s"
	.size	.L.str.4, 54
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"syntax error, unexpected %s, expecting %s or %s or %s or %s"
	.size	.L.str.5, 60
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yysyntax_error
	.addrsig_sym yytnamerr
	.addrsig_sym yypact_value_is_default
	.addrsig_sym yytable_value_is_error
	.addrsig_sym YY_
	.addrsig_sym yystrlen
	.addrsig_sym YY_NULLPTR
	.addrsig_sym yytname
	.addrsig_sym YYEMPTY
	.addrsig_sym yypact
	.addrsig_sym YYLAST
	.addrsig_sym YYNTOKENS
	.addrsig_sym yycheck
	.addrsig_sym YYTERROR
	.addrsig_sym yytable
	.addrsig_sym YYSTACK_ALLOC_MAXIMUM