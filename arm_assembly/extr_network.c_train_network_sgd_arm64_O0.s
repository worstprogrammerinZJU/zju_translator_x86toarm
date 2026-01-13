	.text
	.globl	train_network_sgd               // -- Begin function train_network_sgd
	.p2align	2
	.type	train_network_sgd,@function
train_network_sgd:                      // @train_network_sgd
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	movi	d0, #0000000000000000
	str	s0, [sp, #4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	w2, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	w3, [x8, #4]
	bl	get_random_batch
	ldur	x0, [x29, #-8]
	bl	train_network_datum
	str	s0, [sp]
	ldr	s1, [sp]
	ldr	s0, [sp, #4]
	fadd	s0, s0, s1
	str	s0, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldr	s0, [sp, #4]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	scvtf	s1, w8
	fdiv	s0, s0, s1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	train_network_sgd, .Lfunc_end0-train_network_sgd
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_random_batch
	.addrsig_sym train_network_datum