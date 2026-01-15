	.text
	.globl	tube_find_or_make               // -- Begin function tube_find_or_make
	.p2align	2
	.type	tube_find_or_make,@function
tube_find_or_make:                      // @tube_find_or_make
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	tube_find
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	make_and_insert_tube
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	tube_find_or_make, .Lfunc_end0-tube_find_or_make
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tube_find
	.addrsig_sym make_and_insert_tube