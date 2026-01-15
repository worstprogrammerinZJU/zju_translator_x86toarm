	.text
	.p2align	2                               // -- Begin function stack_pop_block
	.type	stack_pop_block,@function
stack_pop_block:                        // @stack_pop_block
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	stack_block_next
	ldr	x8, [x0]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #24]
	bl	align_round_up
	adrp	x8, ALIGNMENT
	ldr	w8, [x8, :lo12:ALIGNMENT]
	add	w8, w0, w8
	str	w8, [sp, #12]
	ldrsw	x10, [sp, #12]
	ldur	x9, [x29, #-8]
	ldr	x8, [x9]
	add	x8, x8, x10
	str	x8, [x9]
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stack_pop_block, .Lfunc_end0-stack_pop_block
                                        // -- End function
	.type	ALIGNMENT,@object               // @ALIGNMENT
	.bss
	.globl	ALIGNMENT
	.p2align	2
ALIGNMENT:
	.word	0                               // 0x0
	.size	ALIGNMENT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_pop_block
	.addrsig_sym stack_block_next
	.addrsig_sym align_round_up
	.addrsig_sym ALIGNMENT