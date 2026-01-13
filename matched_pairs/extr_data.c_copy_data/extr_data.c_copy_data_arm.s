	.text
	.globl	copy_data                       // -- Begin function copy_data
	.p2align	2
	.type	copy_data,@function
copy_data:                              // @copy_data
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	w1, wzr
	mov	x2, #48
	bl	memset
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x0, #36]
	str	w8, [x9, #36]
	ldr	w8, [x0, #32]
	str	w8, [x9, #32]
	str	xzr, [x9, #24]
	ldr	w8, [x0, #20]
	str	w8, [x9, #20]
	ldr	w8, [x0, #16]
	str	w8, [x9, #16]
	ldr	x0, [x0, #8]
	bl	copy_matrix
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	str	x8, [x9, #8]
	ldr	x0, [x0]
	bl	copy_matrix
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	copy_data, .Lfunc_end0-copy_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_matrix