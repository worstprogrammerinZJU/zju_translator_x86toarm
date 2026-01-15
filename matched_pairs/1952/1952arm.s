	.text
	.p2align	2                               // -- Begin function type_compatible
	.type	type_compatible,@function
type_compatible:                        // @type_compatible
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	is_same_struct
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #8]
	bl	type_compatible
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_7:
	ldr	x0, [sp, #16]
	bl	is_arithtype
	cbz	x0, .LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	x0, [sp, #8]
	bl	is_arithtype
	cbz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	same_arith_type
	stur	w0, [x29, #-4]
	b	.LBB0_11
.LBB0_10:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	type_compatible, .Lfunc_end0-type_compatible
                                        // -- End function
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.bss
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym type_compatible
	.addrsig_sym is_same_struct
	.addrsig_sym is_arithtype
	.addrsig_sym same_arith_type
	.addrsig_sym KIND_STRUCT