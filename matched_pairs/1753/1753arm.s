	.text
	.globl	get_network_output_layer        // -- Begin function get_network_output_layer
	.p2align	2
	.type	get_network_output_layer,@function
get_network_output_layer:               // @get_network_output_layer
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	adrp	x9, COST
	ldr	x9, [x9, :lo12:COST]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_6
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_network_output_layer, .Lfunc_end0-get_network_output_layer
                                        // -- End function
	.type	COST,@object                    // @COST
	.bss
	.globl	COST
	.p2align	3
COST:
	.xword	0                               // 0x0
	.size	COST, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym COST