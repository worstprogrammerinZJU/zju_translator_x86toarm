	.text
	.globl	stack_popn                      // -- Begin function stack_popn
	.p2align	2
	.type	stack_popn,@function
stack_popn:                             // @stack_popn
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #4
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	stack_block
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	add	x0, x8, #4
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	stack_pop_will_free
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	jv_null
	ldr	x8, [sp, #16]
	str	w0, [x8]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	add	x0, x8, #4
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	mov	w2, #4
	bl	stack_pop_block
	ldur	x8, [x29, #-8]
	str	w0, [x8]
	ldr	w0, [sp, #12]
	bl	jv_is_valid
	bl	assert
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stack_popn, .Lfunc_end0-stack_popn
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_block
	.addrsig_sym stack_pop_will_free
	.addrsig_sym jv_null
	.addrsig_sym stack_pop_block
	.addrsig_sym assert
	.addrsig_sym jv_is_valid