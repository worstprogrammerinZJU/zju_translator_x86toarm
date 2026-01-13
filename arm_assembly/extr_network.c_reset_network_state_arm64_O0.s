	.text
	.globl	reset_network_state             // -- Begin function reset_network_state
	.p2align	2
	.type	reset_network_state,@function
reset_network_state:                    // @reset_network_state
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	wzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	reset_network_state, .Lfunc_end0-reset_network_state
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig