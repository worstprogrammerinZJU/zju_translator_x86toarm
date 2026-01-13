	.text
	.p2align	2                               // -- Begin function emit_binop_int_arith
	.type	emit_binop_int_arith,@function
emit_binop_int_arith:                   // @emit_binop_int_arith
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	subs	w8, w8, #37
	b.eq	.LBB0_16
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #42
	b.eq	.LBB0_11
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #43
	b.eq	.LBB0_9
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #45
	b.eq	.LBB0_10
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #47
	b.eq	.LBB0_16
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #94
	b.eq	.LBB0_12
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #128
	b.eq	.LBB0_15
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_14
	b	.LBB0_8
.LBB0_8:
	ldur	w8, [x29, #-20]                 // 4-byte Folded Reload
	subs	w8, w8, #130
	b.eq	.LBB0_13
	b	.LBB0_17
.LBB0_9:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	stur	x8, [x29, #-16]
	b	.LBB0_18
.LBB0_10:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	stur	x8, [x29, #-16]
	b	.LBB0_18
.LBB0_11:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	stur	x8, [x29, #-16]
	b	.LBB0_18
.LBB0_12:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	stur	x8, [x29, #-16]
	b	.LBB0_18
.LBB0_13:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	stur	x8, [x29, #-16]
	b	.LBB0_18
.LBB0_14:
	adrp	x8, .L.str.5
	add	x8, x8, :lo12:.L.str.5
	stur	x8, [x29, #-16]
	b	.LBB0_18
.LBB0_15:
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	stur	x8, [x29, #-16]
	b	.LBB0_18
.LBB0_16:
	b	.LBB0_18
.LBB0_17:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	error
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	emit_expr
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	push
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	bl	emit_expr
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	emit
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	pop
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #47
	b.eq	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #37
	b.ne	.LBB0_26
	b	.LBB0_20
.LBB0_20:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	bl	emit
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	bl	emit
	b	.LBB0_23
.LBB0_22:
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	bl	emit
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	bl	emit
	b	.LBB0_23
.LBB0_23:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #37
	b.ne	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	adrp	x0, .L.str.14
	add	x0, x0, :lo12:.L.str.14
	bl	emit
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_32
.LBB0_26:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #130
	b.eq	.LBB0_29
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #129
	b.eq	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #128
	b.ne	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	w0, [x8]
	mov	w1, #97
	bl	get_int_reg
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	mov	w2, w0
	adrp	x0, .L.str.15
	add	x0, x0, :lo12:.L.str.15
	bl	emit
	b	.LBB0_31
.LBB0_30:
	ldur	x1, [x29, #-16]
	adrp	x0, .L.str.16
	add	x0, x0, :lo12:.L.str.16
	bl	emit
	b	.LBB0_31
.LBB0_31:
	b	.LBB0_32
.LBB0_32:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	emit_binop_int_arith, .Lfunc_end0-emit_binop_int_arith
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"add"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"sub"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"imul"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"xor"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"sal"
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"sar"
	.size	.L.str.5, 4
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"shr"
	.size	.L.str.6, 4
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"invalid operator '%d'"
	.size	.L.str.7, 22
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"rax"
	.size	.L.str.8, 4
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"mov #rax, #rcx"
	.size	.L.str.9, 15
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"xor #edx, #edx"
	.size	.L.str.10, 15
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"div #rcx"
	.size	.L.str.11, 9
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"cqto"
	.size	.L.str.12, 5
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"idiv #rcx"
	.size	.L.str.13, 10
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"mov #edx, #eax"
	.size	.L.str.14, 15
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"%s #cl, #%s"
	.size	.L.str.15, 12
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"%s #rcx, #rax"
	.size	.L.str.16, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_binop_int_arith
	.addrsig_sym error
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym pop
	.addrsig_sym get_int_reg
	.addrsig_sym SAVE