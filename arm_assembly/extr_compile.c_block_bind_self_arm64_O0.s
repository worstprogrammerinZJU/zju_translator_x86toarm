	.text
	.globl	block_bind_self                 // -- Begin function block_bind_self
	.p2align	2
	.type	block_bind_self,@function
block_bind_self:                        // @block_bind_self
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	block_has_only_binders
	bl	assert
	adrp	x8, OP_HAS_BINDING
	ldr	w9, [x8, :lo12:OP_HAS_BINDING]
	ldur	w8, [x29, #-8]
	orr	w8, w8, w9
	stur	w8, [x29, #-8]
	bl	gen_noop
	stur	w0, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	sub	x0, x29, #4
	bl	block_take_last
	str	x0, [sp, #8]
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	inst_block
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-8]
	mov	w3, wzr
	bl	block_bind_subblock
	ldr	w0, [sp, #4]
	ldur	w1, [x29, #-12]
	bl	BLOCK
	stur	w0, [x29, #-12]
	b	.LBB0_1
.LBB0_3:
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_bind_self, .Lfunc_end0-block_bind_self
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
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders
	.addrsig_sym gen_noop
	.addrsig_sym block_take_last
	.addrsig_sym inst_block
	.addrsig_sym block_bind_subblock
	.addrsig_sym BLOCK
	.addrsig_sym OP_HAS_BINDING