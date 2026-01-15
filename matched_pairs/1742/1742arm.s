	.text
	.globl	forward_network                 // -- Begin function forward_network
	.p2align	2
	.type	forward_network,@function
forward_network:                        // @forward_network
// %bb.0:
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	q0, [x8]
	stur	q0, [x29, #-48]
	ldr	q0, [x8, #16]
	stur	q0, [x29, #-32]
	stur	wzr, [x29, #-52]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-52]
	ldur	w9, [x29, #-40]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	stur	w8, [x29, #-36]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-52]
	mov	x10, #40
	mul	x9, x9, x10
	add	x1, x8, x9
	add	x0, sp, #96
	mov	x2, #40
	bl	memcpy
	ldr	x8, [sp, #128]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #96]
	ldr	w9, [sp, #100]
	mul	w0, w8, w9
	ldr	x2, [sp, #128]
	mov	w1, wzr
	mov	w3, #1
	bl	fill_cpu
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	add	x1, sp, #96
	ldr	x8, [sp, #120]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	add	x0, sp, #56
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	x2, #40
	bl	memcpy
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	q0, [x29, #-48]
	add	x1, sp, #16
	str	q0, [sp, #16]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	blr	x8
	ldr	w8, [sp, #104]
	stur	w8, [x29, #-28]
	ldr	x8, [sp, #112]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #104]
	stur	w8, [x29, #-32]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_1
.LBB0_8:
	ldur	x0, [x29, #-8]
	bl	calc_network_cost
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #208
	ret
.Lfunc_end0:
	.size	forward_network, .Lfunc_end0-forward_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym calc_network_cost