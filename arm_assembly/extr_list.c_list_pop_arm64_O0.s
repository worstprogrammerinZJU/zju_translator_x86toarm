	.text
	.globl	list_pop                        // -- Begin function list_pop
	.p2align	2
	.type	list_pop,@function
list_pop:                               // @list_pop
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	xzr, [x8]
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	free
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	list_pop, .Lfunc_end0-list_pop
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free