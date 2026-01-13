	.text
	.globl	train_network                   // -- Begin function train_network
	.p2align	2
	.type	train_network,@function
train_network:                          // @train_network
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	w8, w1
	stur	w8, [x29, #-4]
	stur	x0, [x29, #-16]
	ldur	w8, [x29, #-4]
	ldur	x9, [x29, #-16]
	ldr	w10, [x9]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-20]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-20]
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	movi	d0, #0000000000000000
	str	s0, [sp, #16]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-20]
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	mul	w2, w8, w9
	ldur	x8, [x29, #-16]
	ldr	w3, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	w4, [x8, #4]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	get_next_batch
	ldur	x0, [x29, #-16]
	bl	train_network_datum
	str	s0, [sp, #12]
	ldr	s1, [sp, #12]
	ldr	s0, [sp, #16]
	fadd	s0, s0, s1
	str	s0, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldr	s0, [sp, #16]
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	scvtf	s1, w8
	fdiv	s0, s0, s1
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	train_network, .Lfunc_end0-train_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_next_batch
	.addrsig_sym train_network_datum