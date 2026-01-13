	.text
	.globl	network_predict                 // -- Begin function network_predict
	.p2align	2
	.type	network_predict,@function
network_predict:                        // @network_predict
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	add	x0, sp, #24
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	x2, #40
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	memcpy
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #32]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #24]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #16]
	ldur	x0, [x29, #-8]
	bl	forward_network
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	memcpy
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	network_predict, .Lfunc_end0-network_predict
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym forward_network