	.text
	.p2align	2                               // -- Begin function binop
	.type	binop,@function
binop:                                  // @binop
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-12]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldur	w0, [x29, #-12]
	bl	valid_pointer_binop
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #45
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, type_long
	ldr	x0, [x8, :lo12:type_long]
	ldur	w1, [x29, #-12]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_6:
	adrp	x8, type_int
	ldr	x0, [x8, :lo12:type_int]
	ldur	w1, [x29, #-12]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_7:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	ldur	w1, [x29, #-12]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #32]
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_9:
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #32]
	ldur	x3, [x29, #-24]
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_11:
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	bl	is_arithtype
	bl	assert
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	is_arithtype
	bl	assert
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	ldr	x8, [sp, #32]
	ldr	x1, [x8]
	bl	usual_arith_conv
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	bl	wrap
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #32]
	bl	wrap
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	ast_binop
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	binop, .Lfunc_end0-binop
                                        // -- End function
	.type	KIND_PTR,@object                // @KIND_PTR
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.xword	0                               // 0x0
	.size	KIND_PTR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid pointer arith"
	.size	.L.str, 22
	.type	type_long,@object               // @type_long
	.bss
	.globl	type_long
	.p2align	3
type_long:
	.xword	0
	.size	type_long, 8
	.type	type_int,@object                // @type_int
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym binop
	.addrsig_sym valid_pointer_binop
	.addrsig_sym error
	.addrsig_sym ast_binop
	.addrsig_sym assert
	.addrsig_sym is_arithtype
	.addrsig_sym usual_arith_conv
	.addrsig_sym wrap
	.addrsig_sym KIND_PTR
	.addrsig_sym type_long
	.addrsig_sym type_int