	.text
	.globl	train_network_datum             // -- Begin function train_network_datum
	.p2align	2
	.type	train_network_datum,@function
train_network_datum:                    // @train_network_datum
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w10, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9, #12]
	ldr	x0, [sp, #8]
	bl	forward_network
	ldr	x0, [sp, #8]
	bl	backward_network
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #8]
	sdiv	w8, w8, w9
	ldr	x9, [sp, #8]
	ldr	w10, [x9, #24]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	update_network
	b	.LBB0_2
.LBB0_2:
	ldr	s0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	train_network_datum, .Lfunc_end0-train_network_datum
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym forward_network
	.addrsig_sym backward_network
	.addrsig_sym update_network