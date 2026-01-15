	.text
	.globl	free_section                    // -- Begin function free_section
	.p2align	2
	.type	free_section,@function
free_section:                           // @free_section
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	bl	free
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8, #32]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	free
	ldr	x0, [sp, #8]
	bl	free
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x0, [sp, #16]
	bl	free
	ldr	x8, [sp]
	str	x8, [sp, #16]
	b	.LBB0_1
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	free
	ldur	x0, [x29, #-8]
	bl	free
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	free_section, .Lfunc_end0-free_section
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free