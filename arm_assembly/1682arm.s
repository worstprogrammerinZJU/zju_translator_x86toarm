	.text
	.globl	map_get                         // -- Begin function map_get
	.p2align	2
	.type	map_get,@function
map_get:                                // @map_get
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	map_get_nostack
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	ldr	x1, [sp, #8]
	bl	map_get
	stur	x0, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	map_get, .Lfunc_end0-map_get
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym map_get
	.addrsig_sym map_get_nostack