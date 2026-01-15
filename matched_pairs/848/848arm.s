	.text
	.p2align	2                               // -- Begin function stack_push_block
	.type	stack_push_block,@function
stack_push_block:                       // @stack_push_block
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x0, [sp, #24]
	bl	align_round_up
	adrp	x8, ALIGNMENT
	ldr	w8, [x8, :lo12:ALIGNMENT]
	add	w8, w0, w8
	str	w8, [sp, #20]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #20]
	subs	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #20]
	bl	stack_reallocate
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	stack_block_next
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x8, [x0]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stack_push_block, .Lfunc_end0-stack_push_block
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
	.addrsig_sym stack_push_block
	.addrsig_sym align_round_up
	.addrsig_sym stack_reallocate
	.addrsig_sym stack_block_next
	.addrsig_sym ALIGNMENT