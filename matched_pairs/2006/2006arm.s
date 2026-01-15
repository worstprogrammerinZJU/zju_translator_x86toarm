	.text
	.globl	save_convolutional_weights      // -- Begin function save_convolutional_weights
	.p2align	2
	.type	save_convolutional_weights,@function
save_convolutional_weights:             // @save_convolutional_weights
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	ldr	x8, [x0, #40]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w9, [x8]
	stur	w9, [x29, #-12]
	ldr	w0, [x8, #32]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	bl	fwrite
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #20]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	fwrite
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [x8, #16]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	bl	fwrite
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [x8, #12]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	bl	fwrite
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #8]
	ldur	w2, [x29, #-12]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	bl	fwrite
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	save_convolutional_weights, .Lfunc_end0-save_convolutional_weights
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