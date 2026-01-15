	.text
	.p2align	2                               // -- Begin function emit_binop
	.type	emit_binop,@function
emit_binop:                             // @emit_binop
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #20]
	ldr	x8, [sp, #8]
	ldr	w2, [x8, #16]
	bl	emit_pointer_arith
	b	.LBB0_16
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #60
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #128
	b.eq	.LBB0_9
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #130
	b.eq	.LBB0_7
	b	.LBB0_10
.LBB0_6:
	ldr	x2, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	emit_comp
	b	.LBB0_16
.LBB0_7:
	ldr	x2, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	x0, x1
	bl	emit_comp
	b	.LBB0_16
.LBB0_8:
	ldr	x2, [sp, #8]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	emit_comp
	b	.LBB0_16
.LBB0_9:
	ldr	x2, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	mov	x0, x1
	bl	emit_comp
	b	.LBB0_16
.LBB0_10:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	is_inttype
	cbz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x0, [sp, #8]
	bl	emit_binop_int_arith
	b	.LBB0_16
.LBB0_12:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	is_flotype
	cbz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #8]
	bl	emit_binop_float_arith
	b	.LBB0_15
.LBB0_14:
	ldr	x0, [sp, #8]
	bl	node2s
	mov	w1, w0
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	error
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_binop, .Lfunc_end0-emit_binop
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_PTR,@object                // @KIND_PTR
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.xword	0                               // 0x0
	.size	KIND_PTR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"setl"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"setb"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"sete"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"setle"
	.size	.L.str.3, 6
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"setna"
	.size	.L.str.4, 6
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"setne"
	.size	.L.str.5, 6
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"internal error: %s"
	.size	.L.str.6, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_binop
	.addrsig_sym emit_pointer_arith
	.addrsig_sym emit_comp
	.addrsig_sym is_inttype
	.addrsig_sym emit_binop_int_arith
	.addrsig_sym is_flotype
	.addrsig_sym emit_binop_float_arith
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym SAVE
	.addrsig_sym KIND_PTR