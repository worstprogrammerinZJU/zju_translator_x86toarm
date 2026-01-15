	.text
	.globl	option_insert                   // -- Begin function option_insert
	.p2align	2
	.type	option_insert,@function
option_insert:                          // @option_insert
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	mov	w0, #24
	bl	malloc
	str	x0, [sp]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x8, [sp]
	str	xzr, [x8, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp]
	bl	list_insert
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	option_insert, .Lfunc_end0-option_insert
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym list_insert