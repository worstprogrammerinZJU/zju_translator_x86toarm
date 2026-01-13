	.text
	.globl	stack_push                      // -- Begin function stack_push
	.p2align	2
	.type	stack_push,@function
stack_push:                             // @stack_push
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	jv_is_valid
	bl	assert
	ldur	x8, [x29, #-8]
	add	x0, x8, #4
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	mov	w2, #4
	bl	stack_push_block
	ldur	x8, [x29, #-8]
	str	w0, [x8]
	ldur	x8, [x29, #-8]
	add	x0, x8, #4
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	stack_block
	str	x0, [sp, #8]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stack_push, .Lfunc_end0-stack_push
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym stack_push_block
	.addrsig_sym stack_block