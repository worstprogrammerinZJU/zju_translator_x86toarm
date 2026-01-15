	.text
	.p2align	2                               // -- Begin function read_sizeof_operand
	.type	read_sizeof_operand,@function
read_sizeof_operand:                    // @read_sizeof_operand
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_sizeof_operand_sub
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_VOID
	ldr	x9, [x9, :lo12:KIND_VOID]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_FUNC
	ldr	x9, [x9, :lo12:KIND_FUNC]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	mov	w8, #1
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	mov	w8, wzr
	subs	w8, w8, w9
	cset	w8, le
	and	w0, w8, #0x1
	bl	assert
	adrp	x8, type_ulong
	ldr	w0, [x8, :lo12:type_ulong]
	ldr	w1, [sp, #4]
	bl	ast_inttype
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_sizeof_operand, .Lfunc_end0-read_sizeof_operand
                                        // -- End function
	.type	KIND_VOID,@object               // @KIND_VOID
	.bss
	.globl	KIND_VOID
	.p2align	3
KIND_VOID:
	.xword	0                               // 0x0
	.size	KIND_VOID, 8
	.type	KIND_FUNC,@object               // @KIND_FUNC
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.xword	0                               // 0x0
	.size	KIND_FUNC, 8
	.type	type_ulong,@object              // @type_ulong
	.globl	type_ulong
	.p2align	2
type_ulong:
	.word	0                               // 0x0
	.size	type_ulong, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_sizeof_operand
	.addrsig_sym read_sizeof_operand_sub
	.addrsig_sym assert
	.addrsig_sym ast_inttype
	.addrsig_sym KIND_VOID
	.addrsig_sym KIND_FUNC
	.addrsig_sym type_ulong