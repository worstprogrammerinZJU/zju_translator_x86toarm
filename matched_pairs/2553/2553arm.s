	.text
	.globl	del_arg                         // -- Begin function del_arg
	.p2align	2
	.type	del_arg,@function
del_arg:                                // @del_arg
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #28]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #8]
	add	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	del_arg, .Lfunc_end0-del_arg
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig