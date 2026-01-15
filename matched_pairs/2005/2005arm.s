	.text
	.globl	save_connected_weights          // -- Begin function save_connected_weights
	.p2align	2
	.type	save_connected_weights,@function
save_connected_weights:                 // @save_connected_weights
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	x8, x0
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	ldr	w0, [x8, #36]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	fwrite
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x9, #32]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w2, w8, w9
	ldur	x3, [x29, #-8]
	bl	fwrite
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x0, #24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #16]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	fwrite
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	w0, [x8, #12]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	bl	fwrite
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	w0, [x8, #8]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	bl	fwrite
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	save_connected_weights, .Lfunc_end0-save_connected_weights
                                        // -- End function
	.type	gpu_index,@object               // @gpu_index
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.xword	0                               // 0x0
	.size	gpu_index, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fwrite