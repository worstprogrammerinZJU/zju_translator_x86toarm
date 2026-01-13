	.text
	.p2align	2                               // -- Begin function _rmtAllocate
	.type	_rmtAllocate,@function
_rmtAllocate:                           // @_rmtAllocate
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	w1, [sp, #24]
	str	w2, [sp, #20]
	ldr	w8, [sp, #20]
	adrp	x9, g_rmt_objects
	ldr	x9, [x9, :lo12:g_rmt_objects]
	ldrsw	x10, [sp, #24]
	lsl	x10, x10, #3
	str	w8, [x9, x10]
	str	xzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #20]
	subs	x8, x8, x9
	b.hs	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, g_rmt_objects
	ldr	x8, [x8, :lo12:g_rmt_objects]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #24]
	add	x9, x9, x10
	add	x9, x8, x9, lsl #3
	mov	w8, #1
	str	w8, [x9, #4]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	adrp	x8, g_rmt_objects
	ldr	x8, [x8, :lo12:g_rmt_objects]
	ldrsw	x9, [sp, #24]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	_rmtAllocate, .Lfunc_end0-_rmtAllocate
                                        // -- End function
	.type	g_rmt_objects,@object           // @g_rmt_objects
	.bss
	.globl	g_rmt_objects
	.p2align	3
g_rmt_objects:
	.xword	0
	.size	g_rmt_objects, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _rmtAllocate
	.addrsig_sym g_rmt_objects