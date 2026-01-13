	.text
	.globl	gen_const_object                // -- Begin function gen_const_object
	.p2align	2
	.type	gen_const_object,@function
gen_const_object:                       // @gen_const_object
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	mov	w8, #1
	str	w8, [sp, #28]
	bl	jv_object
	str	w0, [sp, #24]
	bl	jv_null
	str	w0, [sp, #20]
	bl	jv_null
	str	w0, [sp, #16]
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_31
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, PUSHK_UNDER
	ldr	x9, [x9, :lo12:PUSHK_UNDER]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #20]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_12
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, SUBEXP_BEGIN
	ldr	x9, [x9, :lo12:SUBEXP_BEGIN]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_9
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, LOADK
	ldr	x9, [x9, :lo12:LOADK]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, SUBEXP_END
	ldr	x9, [x9, :lo12:SUBEXP_END]
	subs	x8, x8, x9
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	str	wzr, [sp, #28]
	b	.LBB0_31
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #20]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, PUSHK_UNDER
	ldr	x9, [x9, :lo12:PUSHK_UNDER]
	subs	x8, x8, x9
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_24
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_21
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, SUBEXP_BEGIN
	ldr	x9, [x9, :lo12:SUBEXP_BEGIN]
	subs	x8, x8, x9
	b.ne	.LBB0_21
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_21
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, LOADK
	ldr	x9, [x9, :lo12:LOADK]
	subs	x8, x8, x9
	b.ne	.LBB0_21
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, SUBEXP_END
	ldr	x9, [x9, :lo12:SUBEXP_END]
	subs	x8, x8, x9
	b.eq	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	str	wzr, [sp, #28]
	b	.LBB0_31
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	w0, [x8, #16]
	bl	jv_copy
	str	w0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, INSERT
	ldr	x9, [x9, :lo12:INSERT]
	subs	x8, x8, x9
	b.eq	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	str	wzr, [sp, #28]
	b	.LBB0_31
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #20]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.eq	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	str	wzr, [sp, #28]
	b	.LBB0_31
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #24]
	ldr	w1, [sp, #20]
	ldr	w2, [sp, #16]
	bl	jv_object_set
	str	w0, [sp, #24]
	bl	jv_null
	str	w0, [sp, #20]
	bl	jv_null
	str	w0, [sp, #16]
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_31:
	ldr	w8, [sp, #28]
	cbnz	w8, .LBB0_33
	b	.LBB0_32
.LBB0_32:
	ldr	w0, [sp, #24]
	bl	jv_free
	ldr	w0, [sp, #20]
	bl	jv_free
	ldr	w0, [sp, #16]
	bl	jv_free
	stur	xzr, [x29, #-16]
	stur	xzr, [x29, #-8]
	b	.LBB0_34
.LBB0_33:
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	block_free
	ldr	w0, [sp, #24]
	bl	gen_const
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	b	.LBB0_34
.LBB0_34:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gen_const_object, .Lfunc_end0-gen_const_object
                                        // -- End function
	.type	PUSHK_UNDER,@object             // @PUSHK_UNDER
	.bss
	.globl	PUSHK_UNDER
	.p2align	3
PUSHK_UNDER:
	.xword	0                               // 0x0
	.size	PUSHK_UNDER, 8
	.type	SUBEXP_BEGIN,@object            // @SUBEXP_BEGIN
	.globl	SUBEXP_BEGIN
	.p2align	3
SUBEXP_BEGIN:
	.xword	0                               // 0x0
	.size	SUBEXP_BEGIN, 8
	.type	LOADK,@object                   // @LOADK
	.globl	LOADK
	.p2align	3
LOADK:
	.xword	0                               // 0x0
	.size	LOADK, 8
	.type	SUBEXP_END,@object              // @SUBEXP_END
	.globl	SUBEXP_END
	.p2align	3
SUBEXP_END:
	.xword	0                               // 0x0
	.size	SUBEXP_END, 8
	.type	INSERT,@object                  // @INSERT
	.globl	INSERT
	.p2align	3
INSERT:
	.xword	0                               // 0x0
	.size	INSERT, 8
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_object
	.addrsig_sym jv_null
	.addrsig_sym jv_copy
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_set
	.addrsig_sym jv_free
	.addrsig_sym block_free
	.addrsig_sym gen_const
	.addrsig_sym PUSHK_UNDER
	.addrsig_sym SUBEXP_BEGIN
	.addrsig_sym LOADK
	.addrsig_sym SUBEXP_END
	.addrsig_sym INSERT
	.addrsig_sym JV_KIND_STRING