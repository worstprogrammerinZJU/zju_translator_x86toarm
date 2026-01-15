	.text
	.globl	jvp_dtoa_context_init           // -- Begin function jvp_dtoa_context_init
	.p2align	2
	.type	jvp_dtoa_context_init,@function
jvp_dtoa_context_init:                  // @jvp_dtoa_context_init
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #8]
	ldrsw	x10, [sp, #4]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jvp_dtoa_context_init, .Lfunc_end0-jvp_dtoa_context_init
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig