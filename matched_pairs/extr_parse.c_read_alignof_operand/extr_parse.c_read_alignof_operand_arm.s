	.text
	.p2align	2                               // -- Begin function read_alignof_operand
	.type	read_alignof_operand,@function
read_alignof_operand:                   // @read_alignof_operand
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #40
	bl	expect
	bl	read_cast_type
	str	x0, [sp, #8]
	mov	w0, #41
	bl	expect
	adrp	x8, type_ulong
	ldr	w0, [x8, :lo12:type_ulong]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	bl	ast_inttype
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_alignof_operand, .Lfunc_end0-read_alignof_operand
                                        // -- End function
	.type	type_ulong,@object              // @type_ulong
	.bss
	.globl	type_ulong
	.p2align	2
type_ulong:
	.word	0                               // 0x0
	.size	type_ulong, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_alignof_operand
	.addrsig_sym expect
	.addrsig_sym read_cast_type
	.addrsig_sym ast_inttype
	.addrsig_sym type_ulong