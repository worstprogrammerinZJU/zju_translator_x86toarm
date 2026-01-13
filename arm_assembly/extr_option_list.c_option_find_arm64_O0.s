	.text
	.globl	option_find                     // -- Begin function option_find
	.p2align	2
	.type	option_find,@function
option_find:                            // @option_find
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	ldr	x1, [sp, #24]
	bl	strcmp
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_5:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	option_find, .Lfunc_end0-option_find
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp