	.text
	.globl	opcode_describe                 // -- Begin function opcode_describe
	.p2align	2
	.type	opcode_describe,@function
opcode_describe:                        // @opcode_describe
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
                                        // kill: def $w8 killed $w8 killed $x8
	tbnz	w8, #31, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
                                        // kill: def $w8 killed $w8 killed $x8
	adrp	x9, NUM_OPCODES
	ldr	w9, [x9, :lo12:NUM_OPCODES]
	subs	w8, w8, w9
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, opcode_descriptions
	ldr	x8, [x8, :lo12:opcode_descriptions]
	ldr	x9, [sp]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #8]
	b	.LBB0_4
.LBB0_3:
	adrp	x8, invalid_opcode_description
	add	x8, x8, :lo12:invalid_opcode_description
	str	x8, [sp, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	opcode_describe, .Lfunc_end0-opcode_describe
                                        // -- End function
	.type	NUM_OPCODES,@object             // @NUM_OPCODES
	.bss
	.globl	NUM_OPCODES
	.p2align	2
NUM_OPCODES:
	.word	0                               // 0x0
	.size	NUM_OPCODES, 4
	.type	opcode_descriptions,@object     // @opcode_descriptions
	.globl	opcode_descriptions
	.p2align	3
opcode_descriptions:
	.xword	0
	.size	opcode_descriptions, 8
	.type	invalid_opcode_description,@object // @invalid_opcode_description
	.section	.rodata,"a",@progbits
	.globl	invalid_opcode_description
	.p2align	2
invalid_opcode_description:
	.zero	4
	.size	invalid_opcode_description, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym NUM_OPCODES
	.addrsig_sym opcode_descriptions
	.addrsig_sym invalid_opcode_description