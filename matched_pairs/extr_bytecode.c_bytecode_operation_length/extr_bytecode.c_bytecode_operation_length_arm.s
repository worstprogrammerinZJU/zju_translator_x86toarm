	.text
	.globl	bytecode_operation_length       // -- Begin function bytecode_operation_length
	.p2align	2
	.type	bytecode_operation_length,@function
bytecode_operation_length:              // @bytecode_operation_length
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	opcode_describe
	ldr	w8, [x0]
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, CALL_JQ
	ldr	x9, [x9, :lo12:CALL_JQ]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TAIL_CALL_JQ
	ldr	x9, [x9, :lo12:TAIL_CALL_JQ]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #8]
	ldrsw	x8, [sp, #4]
	add	x8, x8, x9, lsl #1
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	bytecode_operation_length, .Lfunc_end0-bytecode_operation_length
                                        // -- End function
	.type	CALL_JQ,@object                 // @CALL_JQ
	.bss
	.globl	CALL_JQ
	.p2align	3
CALL_JQ:
	.xword	0                               // 0x0
	.size	CALL_JQ, 8
	.type	TAIL_CALL_JQ,@object            // @TAIL_CALL_JQ
	.globl	TAIL_CALL_JQ
	.p2align	3
TAIL_CALL_JQ:
	.xword	0                               // 0x0
	.size	TAIL_CALL_JQ, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym opcode_describe
	.addrsig_sym CALL_JQ
	.addrsig_sym TAIL_CALL_JQ