	.text
	.globl	box_rmse                        // -- Begin function box_rmse
	.p2align	2
	.type	box_rmse,@function
box_rmse:                               // @box_rmse
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]                 // 8-byte Folded Spill
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	ldr	x8, [x0, #24]
	ldr	x9, [x1, #24]
	subs	x0, x8, x9
	mov	w1, #2
	stur	w1, [x29, #-20]                 // 4-byte Folded Spill
	bl	pow
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-20]                 // 4-byte Folded Reload
	mov	x8, x0
	ldur	x0, [x29, #-16]                 // 8-byte Folded Reload
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x8, [x0, #16]
	ldr	x9, [x9, #16]
	subs	x0, x8, x9
	bl	pow
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-20]                 // 4-byte Folded Reload
	mov	x10, x0
	ldur	x0, [x29, #-16]                 // 8-byte Folded Reload
	add	x8, x8, x10
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x8, [x0, #8]
	ldr	x9, [x9, #8]
	subs	x0, x8, x9
	bl	pow
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w1, [x29, #-20]                 // 4-byte Folded Reload
	mov	x10, x0
	ldur	x0, [x29, #-16]                 // 8-byte Folded Reload
	add	x8, x8, x10
	stur	x8, [x29, #-8]                  // 8-byte Folded Spill
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x0, x8, x9
	bl	pow
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x0, x8, x0
	bl	sqrt
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	box_rmse, .Lfunc_end0-box_rmse
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt
	.addrsig_sym pow