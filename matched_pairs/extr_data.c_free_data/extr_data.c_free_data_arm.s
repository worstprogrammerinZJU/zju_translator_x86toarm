	.text
	.globl	free_data                       // -- Begin function free_data
	.p2align	2
	.type	free_data,@function
free_data:                              // @free_data
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	x8, [sp]
	str	x8, [sp, #16]
	ldr	w8, [sp, #8]
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	mov	w0, w8
	bl	free_matrix
	ldr	w8, [sp, #16]
	mov	w0, w8
	bl	free_matrix
	b	.LBB0_3
.LBB0_2:
	ldr	w0, [sp, #20]
	bl	free
	ldr	w0, [sp, #16]
	bl	free
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	free_data, .Lfunc_end0-free_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free_matrix
	.addrsig_sym free