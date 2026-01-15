	.text
	.globl	load_batchnorm_weights          // -- Begin function load_batchnorm_weights
	.p2align	2
	.type	load_batchnorm_weights,@function
load_batchnorm_weights:                 // @load_batchnorm_weights
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp, #8]
	ldr	w0, [sp, #28]
	ldr	w2, [sp, #16]
	ldr	x3, [sp, #8]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	fread
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [sp, #24]
	ldr	w2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	fread
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [sp, #20]
	ldr	w2, [sp, #16]
	ldr	x3, [sp, #8]
	bl	fread
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	load_batchnorm_weights, .Lfunc_end0-load_batchnorm_weights
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