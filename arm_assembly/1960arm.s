	.text
	.p2align	2                               // -- Begin function constant_fold
	.type	constant_fold,@function
constant_fold:                          // @constant_fold
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w0, [x29, #-8]
	bl	block_is_single
	cbz	w0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-8]
	bl	block_is_const
	cbz	w0, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-12]
	bl	block_is_single
	cbz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-12]
	bl	block_is_const
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	bl	gen_noop
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_5:
	ldur	w8, [x29, #-16]
	subs	w8, w8, #43
	b.ne	.LBB0_11
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-8]
	bl	block_const_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-8]
	bl	block_free
	ldur	w8, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_8:
	ldur	w0, [x29, #-12]
	bl	block_const_kind
	adrp	x8, JV_KIND_NULL
	ldr	x8, [x8, :lo12:JV_KIND_NULL]
	subs	x8, x0, x8
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-12]
	bl	block_free
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_54
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-8]
	bl	block_const_kind
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	block_const_kind
	mov	x8, x0
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	subs	x8, x0, x8
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	bl	gen_noop
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_13:
	bl	jv_invalid
	stur	w0, [x29, #-20]
	ldur	w0, [x29, #-8]
	bl	block_const_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	b.ne	.LBB0_46
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-8]
	bl	block_const
	stur	w0, [x29, #-24]
	ldur	w0, [x29, #-12]
	bl	block_const
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-24]
	bl	jv_number_value
	stur	d0, [x29, #-40]
	ldur	w0, [x29, #-28]
	bl	jv_number_value
	stur	d0, [x29, #-48]
	ldur	w0, [x29, #-24]
	ldur	w1, [x29, #-28]
	bl	jv_cmp
	stur	w0, [x29, #-52]
	ldur	w8, [x29, #-16]
	subs	w8, w8, #42
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	subs	x8, x8, #89
	b.hi	.LBB0_44
// %bb.15:
	ldr	x11, [sp, #40]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_16:
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-48]
	fadd	d0, d0, d1
	bl	jv_number
	stur	w0, [x29, #-20]
	b	.LBB0_45
.LBB0_17:
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-48]
	fsub	d0, d0, d1
	bl	jv_number
	stur	w0, [x29, #-20]
	b	.LBB0_45
.LBB0_18:
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-48]
	fmul	d0, d0, d1
	bl	jv_number
	stur	w0, [x29, #-20]
	b	.LBB0_45
.LBB0_19:
	ldur	d0, [x29, #-40]
	ldur	d1, [x29, #-48]
	fdiv	d0, d0, d1
	bl	jv_number
	stur	w0, [x29, #-20]
	b	.LBB0_45
.LBB0_20:
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	bl	jv_true
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_23
.LBB0_22:
	bl	jv_false
	str	w0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_23
.LBB0_23:
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	.LBB0_45
.LBB0_24:
	ldur	w8, [x29, #-52]
	cbz	w8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	bl	jv_true
	str	w0, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_27
.LBB0_26:
	bl	jv_false
	str	w0, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_27
.LBB0_27:
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	.LBB0_45
.LBB0_28:
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	b.ge	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	bl	jv_true
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_31
.LBB0_30:
	bl	jv_false
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_31
.LBB0_31:
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	.LBB0_45
.LBB0_32:
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	b.le	.LBB0_34
	b	.LBB0_33
.LBB0_33:
	bl	jv_true
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_35
.LBB0_34:
	bl	jv_false
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_35
.LBB0_35:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	.LBB0_45
.LBB0_36:
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	b.gt	.LBB0_38
	b	.LBB0_37
.LBB0_37:
	bl	jv_true
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_39
.LBB0_38:
	bl	jv_false
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_39
.LBB0_39:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	.LBB0_45
.LBB0_40:
	ldur	w8, [x29, #-52]
	tbnz	w8, #31, .LBB0_42
	b	.LBB0_41
.LBB0_41:
	bl	jv_true
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_43
.LBB0_42:
	bl	jv_false
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_43
.LBB0_43:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	stur	w8, [x29, #-20]
	b	.LBB0_45
.LBB0_44:
	b	.LBB0_45
.LBB0_45:
	b	.LBB0_51
.LBB0_46:
	ldur	w8, [x29, #-16]
	subs	w8, w8, #43
	b.ne	.LBB0_49
	b	.LBB0_47
.LBB0_47:
	ldur	w0, [x29, #-8]
	bl	block_const_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_49
	b	.LBB0_48
.LBB0_48:
	ldur	w0, [x29, #-8]
	bl	block_const
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	block_const
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_string_concat
	stur	w0, [x29, #-20]
	b	.LBB0_50
.LBB0_49:
	bl	gen_noop
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_50:
	b	.LBB0_51
.LBB0_51:
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_INVALID
	ldr	x8, [x8, :lo12:JV_KIND_INVALID]
	subs	x8, x0, x8
	b.ne	.LBB0_53
	b	.LBB0_52
.LBB0_52:
	bl	gen_noop
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_53:
	ldur	w0, [x29, #-8]
	bl	block_free
	ldur	w0, [x29, #-12]
	bl	block_free
	ldur	w0, [x29, #-20]
	bl	gen_const
	stur	w0, [x29, #-4]
	b	.LBB0_54
.LBB0_54:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	constant_fold, .Lfunc_end0-constant_fold
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_18-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_19-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_28-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_32-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_24-.Ltmp0
	.word	.LBB0_36-.Ltmp0
	.word	.LBB0_40-.Ltmp0
	.word	.LBB0_20-.Ltmp0
                                        // -- End function
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.xword	0                               // 0x0
	.size	JV_KIND_INVALID, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym constant_fold
	.addrsig_sym block_is_single
	.addrsig_sym block_is_const
	.addrsig_sym gen_noop
	.addrsig_sym block_const_kind
	.addrsig_sym block_free
	.addrsig_sym jv_invalid
	.addrsig_sym block_const
	.addrsig_sym jv_number_value
	.addrsig_sym jv_cmp
	.addrsig_sym jv_number
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym jv_string_concat
	.addrsig_sym jv_get_kind
	.addrsig_sym gen_const
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_INVALID