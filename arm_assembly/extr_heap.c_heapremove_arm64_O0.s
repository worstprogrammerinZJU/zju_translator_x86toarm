	.text
	.globl	heapremove                      // -- Begin function heapremove
	.p2align	2
	.type	heapremove,@function
heapremove:                             // @heapremove
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.lo	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp]
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	subs	x8, x8, #1
	str	x8, [x9]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	ldr	x2, [x8, x9, lsl #3]
	bl	set
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	siftdown
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	siftup
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	heapremove, .Lfunc_end0-heapremove
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set
	.addrsig_sym siftdown
	.addrsig_sym siftup