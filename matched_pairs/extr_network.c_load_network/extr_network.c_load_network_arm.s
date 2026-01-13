	.text
	.globl	load_network                    // -- Begin function load_network
	.p2align	2
	.type	load_network,@function
load_network:                           // @load_network
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x0, [x29, #-8]
	bl	parse_network_cfg
	str	x0, [sp]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp]
	ldr	x1, [sp, #16]
	bl	load_weights
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	xzr, [x8]
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	load_network, .Lfunc_end0-load_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_network_cfg
	.addrsig_sym load_weights