	.text
	.globl	load_connected_weights          // -- Begin function load_connected_weights
	.p2align	2
	.type	load_connected_weights,@function
load_connected_weights:                 // @load_connected_weights
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	x8, x0
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	stur	w2, [x29, #-12]
	ldr	w0, [x8, #36]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	bl	fread
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	w0, [x9, #32]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w2, w8, w9
	ldur	x3, [x29, #-8]
	bl	fread
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #32]
	ldr	w1, [x8, #4]
	ldr	w2, [x8]
	bl	transpose_matrix
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8, #20]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8, #16]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	fread
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [x8, #12]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	bl	fread
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [x8, #8]
	ldr	w2, [x8]
	ldur	x3, [x29, #-8]
	bl	fread
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	load_connected_weights, .Lfunc_end0-load_connected_weights
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