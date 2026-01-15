	.text
	.p2align	2                               // -- Begin function check_literal
	.type	check_literal,@function
check_literal:                          // @check_literal
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_23
.LBB0_2:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	subs	w8, w8, #102
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #110
	b.eq	.LBB0_7
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	subs	w8, w8, #116
	b.ne	.LBB0_8
	b	.LBB0_5
.LBB0_5:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-24]
	mov	w8, #4
	stur	w8, [x29, #-28]
	bl	jv_true
	stur	w0, [x29, #-32]
	b	.LBB0_8
.LBB0_6:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-24]
	mov	w8, #5
	stur	w8, [x29, #-28]
	bl	jv_false
	stur	w0, [x29, #-32]
	b	.LBB0_8
.LBB0_7:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-24]
	mov	w8, #4
	stur	w8, [x29, #-28]
	bl	jv_null
	stur	w0, [x29, #-32]
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_18
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.eq	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x8, [x29, #-8]
	b	.LBB0_23
.LBB0_11:
	stur	wzr, [x29, #-36]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-36]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldursw	x10, [x29, #-36]
	ldrb	w9, [x9, x10]
	subs	w8, w8, w9
	b.eq	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x8, [x29, #-8]
	b	.LBB0_23
.LBB0_15:                               //   in Loop: Header=BB0_12 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_12
.LBB0_17:
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-32]
	bl	value
	bl	TRY
	b	.LBB0_22
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	x9, [x8, #8]
	ldur	x8, [x29, #-16]
	ldrsw	x10, [x8]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	add	x2, sp, #32
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	ldur	x8, [x29, #-16]
	add	x0, x8, #16
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	bl	jvp_strtod
	str	d0, [sp, #24]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	stur	x8, [x29, #-8]
	b	.LBB0_23
.LBB0_21:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	d0, [sp, #24]
	bl	jv_number
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	value
	bl	TRY
	b	.LBB0_22
.LBB0_22:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_23
.LBB0_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	check_literal, .Lfunc_end0-check_literal
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"true"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"false"
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"null"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Invalid literal"
	.size	.L.str.3, 16
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"Invalid numeric literal"
	.size	.L.str.4, 24
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.bss
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.xword	0                               // 0x0
	.size	JV_KIND_INVALID, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_literal
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym jv_null
	.addrsig_sym TRY
	.addrsig_sym value
	.addrsig_sym jvp_strtod
	.addrsig_sym jv_number