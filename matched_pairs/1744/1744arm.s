	.text
	.globl	free_network                    // -- Begin function free_network
	.p2align	2
	.type	free_network,@function
free_network:                           // @free_network
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #40]
	ldursw	x9, [x29, #-12]
	mov	x10, #48
	mul	x9, x9, x10
	add	x1, x8, x9
	add	x0, sp, #16
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	x2, #48
	bl	memcpy
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	free_layer
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	bl	free
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	free
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #24]
	bl	free
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	bl	free
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	free_network, .Lfunc_end0-free_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free_layer
	.addrsig_sym free