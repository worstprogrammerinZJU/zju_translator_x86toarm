	.text
	.p2align	2                               // -- Begin function inst_free
	.type	inst_free,@function
inst_free:                              // @inst_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	bl	jv_mem_free
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #20]
	bl	block_free
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	bl	block_free
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	locfile_free
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #4]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_CONSTANT
	ldr	w9, [x9, :lo12:OP_HAS_CONSTANT]
	and	w8, w8, w9
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_free
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	jv_mem_free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	inst_free, .Lfunc_end0-inst_free
                                        // -- End function
	.type	OP_HAS_CONSTANT,@object         // @OP_HAS_CONSTANT
	.bss
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.word	0                               // 0x0
	.size	OP_HAS_CONSTANT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_free
	.addrsig_sym jv_mem_free
	.addrsig_sym block_free
	.addrsig_sym locfile_free
	.addrsig_sym opcode_describe
	.addrsig_sym jv_free
	.addrsig_sym OP_HAS_CONSTANT