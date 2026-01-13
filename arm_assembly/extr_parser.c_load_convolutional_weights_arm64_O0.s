	.text
	.globl	load_convolutional_weights      // -- Begin function load_convolutional_weights
	.p2align	2
	.type	load_convolutional_weights,@function
load_convolutional_weights:             // @load_convolutional_weights
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	ldr	x8, [x0, #88]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x9]
	str	w8, [x9, #4]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	sdiv	w9, w9, w10
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	ldr	w10, [x8, #16]
	mul	w9, w9, w10
	ldr	w10, [x8, #16]
	mul	w9, w9, w10
	stur	w9, [x29, #-12]
	ldr	x0, [x8, #24]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	bl	fread
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #80]
	cbz	x8, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8, #72]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #32]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	fread
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [x8, #40]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	bl	fread
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x0, [x8, #48]
	ldr	w2, [x8, #4]
	ldur	x3, [x29, #-8]
	bl	fread
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldur	w2, [x29, #-12]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	bl	fread
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #64]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #16]
	mul	w9, w9, w10
	ldr	w10, [x8, #16]
	mul	w1, w9, w10
	ldr	w2, [x8, #4]
	bl	transpose_matrix
	b	.LBB0_9
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	load_convolutional_weights, .Lfunc_end0-load_convolutional_weights
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
	.addrsig_sym fread
	.addrsig_sym transpose_matrix