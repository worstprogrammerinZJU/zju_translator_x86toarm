	.text
	.globl	list_insert                     // -- Begin function list_insert
	.p2align	2
	.type	list_insert,@function
list_insert:                            // @list_insert
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	mov	w0, #24
	bl	malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	list_insert, .Lfunc_end0-list_insert
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc