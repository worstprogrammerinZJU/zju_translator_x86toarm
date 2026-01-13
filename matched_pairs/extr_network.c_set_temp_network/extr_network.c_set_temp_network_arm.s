	.text
	.globl	set_temp_network                // -- Begin function set_temp_network
	.p2align	2
	.type	set_temp_network,@function
set_temp_network:                       // @set_temp_network
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	s0, [sp, #4]
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
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl #2]
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
	.size	set_temp_network, .Lfunc_end0-set_temp_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig