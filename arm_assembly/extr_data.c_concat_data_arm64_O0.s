	.text
	.globl	concat_data                     // -- Begin function concat_data
	.p2align	2
	.type	concat_data,@function
concat_data:                            // @concat_data
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	x8, [x29, #-8]                  // 8-byte Folded Spill
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	mov	w1, wzr
	mov	x2, #40
	bl	memset
	ldur	x0, [x29, #-8]                  // 8-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	w8, #1
	str	w8, [x9]
	ldr	x0, [x0, #24]
	ldr	x1, [x1, #24]
	bl	concat_matrix
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	x8, x0
	ldur	x0, [x29, #-8]                  // 8-byte Folded Reload
	str	x8, [x9, #24]
	ldr	x0, [x0, #16]
	ldr	x1, [x1, #16]
	bl	concat_matrix
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	x8, x0
	ldur	x0, [x29, #-8]                  // 8-byte Folded Reload
	str	x8, [x9, #16]
	ldr	w8, [x0, #8]
	str	w8, [x9, #8]
	ldr	w8, [x0, #4]
	str	w8, [x9, #4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	concat_data, .Lfunc_end0-concat_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym concat_matrix