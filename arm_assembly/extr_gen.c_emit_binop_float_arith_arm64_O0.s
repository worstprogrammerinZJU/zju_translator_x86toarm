	.text
	.p2align	2                               // -- Begin function emit_binop_float_arith
	.type	emit_binop_float_arith,@function
emit_binop_float_arith:                 // @emit_binop_float_arith
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	adrp	x9, KIND_DOUBLE
	ldr	x9, [x9, :lo12:KIND_DOUBLE]
	subs	x8, x8, x9
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-20]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #42
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	subs	x8, x8, #5
	b.hi	.LBB0_6
// %bb.1:
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	w10, [x29, #-20]
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	subs	w10, w10, #0
	csel	x8, x8, x9, ne
	stur	x8, [x29, #-16]
	b	.LBB0_7
.LBB0_3:
	ldur	w10, [x29, #-20]
	adrp	x9, .L.str.3
	add	x9, x9, :lo12:.L.str.3
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	subs	w10, w10, #0
	csel	x8, x8, x9, ne
	stur	x8, [x29, #-16]
	b	.LBB0_7
.LBB0_4:
	ldur	w10, [x29, #-20]
	adrp	x9, .L.str.5
	add	x9, x9, :lo12:.L.str.5
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	subs	w10, w10, #0
	csel	x8, x8, x9, ne
	stur	x8, [x29, #-16]
	b	.LBB0_7
.LBB0_5:
	ldur	w10, [x29, #-20]
	adrp	x9, .L.str.7
	add	x9, x9, :lo12:.L.str.7
	adrp	x8, .L.str.6
	add	x8, x8, :lo12:.L.str.6
	subs	w10, w10, #0
	csel	x8, x8, x9, ne
	stur	x8, [x29, #-16]
	b	.LBB0_7
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	error
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	emit_expr
	mov	w0, wzr
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	push_xmm
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	bl	emit_expr
	ldur	w10, [x29, #-20]
	adrp	x9, .L.str.11
	add	x9, x9, :lo12:.L.str.11
	adrp	x8, .L.str.10
	add	x8, x8, :lo12:.L.str.10
	subs	w10, w10, #0
	csel	x1, x8, x9, ne
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	bl	emit
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	pop_xmm
	ldur	x1, [x29, #-16]
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	bl	emit
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	emit_binop_float_arith, .Lfunc_end0-emit_binop_float_arith
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_5-.Ltmp0
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_DOUBLE,@object             // @KIND_DOUBLE
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.xword	0                               // 0x0
	.size	KIND_DOUBLE, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"addsd"
	.size	.L.str, 6
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"addss"
	.size	.L.str.1, 6
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"subsd"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"subss"
	.size	.L.str.3, 6
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"mulsd"
	.size	.L.str.4, 6
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"mulss"
	.size	.L.str.5, 6
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"divsd"
	.size	.L.str.6, 6
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"divss"
	.size	.L.str.7, 6
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"invalid operator '%d'"
	.size	.L.str.8, 22
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"%s #xmm0, #xmm1"
	.size	.L.str.9, 16
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"movsd"
	.size	.L.str.10, 6
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"movss"
	.size	.L.str.11, 6
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"%s #xmm1, #xmm0"
	.size	.L.str.12, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_binop_float_arith
	.addrsig_sym error
	.addrsig_sym emit_expr
	.addrsig_sym push_xmm
	.addrsig_sym emit
	.addrsig_sym pop_xmm
	.addrsig_sym SAVE
	.addrsig_sym KIND_DOUBLE