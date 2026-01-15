	.text
	.p2align	2                               // -- Begin function block_bind_each
	.type	block_bind_each,@function
block_bind_each:                        // @block_bind_each
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	w1, [sp, #12]
	ldur	x0, [x29, #-8]
	bl	block_has_only_binders
	bl	assert
	adrp	x8, OP_HAS_BINDING
	ldr	w9, [x8, :lo12:OP_HAS_BINDING]
	ldr	w8, [sp, #12]
	orr	w8, w8, w9
	str	w8, [sp, #12]
	str	wzr, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	cbz	x8, .LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp]
	bl	inst_block
	ldr	w2, [sp, #12]
	ldr	x1, [sp, #16]
	mov	w3, wzr
	bl	block_bind_subblock
	ldrsw	x8, [sp, #8]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp]
	b	.LBB0_1
.LBB0_4:
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_bind_each, .Lfunc_end0-block_bind_each
                                        // -- End function
	.type	OP_HAS_BINDING,@object          // @OP_HAS_BINDING
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.word	0                               // 0x0
	.size	OP_HAS_BINDING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_bind_each
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders
	.addrsig_sym block_bind_subblock
	.addrsig_sym inst_block
	.addrsig_sym OP_HAS_BINDING