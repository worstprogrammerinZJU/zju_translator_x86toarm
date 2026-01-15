	.text
	.globl	make_batchnorm_layer            // -- Begin function make_batchnorm_layer
	.p2align	2
	.type	make_batchnorm_layer,@function
make_batchnorm_layer:                   // @make_batchnorm_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	ldur	w4, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #264
	bl	memset
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, BATCHNORM
	ldr	w8, [x8, :lo12:BATCHNORM]
	str	w8, [x9, #256]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #16]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #24]
	str	w8, [x9, #20]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #32]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #40]
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-12]
	mul	w8, w8, w10
	ldur	w10, [x29, #-16]
	mul	w8, w8, w10
	str	w8, [x9, #48]
	ldr	w8, [x9, #48]
	str	w8, [x9, #52]
	ldur	w0, [x29, #-16]
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldur	w0, [x29, #-16]
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	ldur	w0, [x29, #-16]
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldur	w0, [x29, #-16]
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #80]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x9, [x8, #56]
	ldursw	x10, [x29, #-20]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldur	w0, [x29, #-16]
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #88]
	ldur	w0, [x29, #-16]
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #96]
	ldur	w0, [x29, #-16]
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #248]
	ldur	w0, [x29, #-16]
	bl	calloc
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #240]
	adrp	x8, forward_batchnorm_layer
	ldr	w8, [x8, :lo12:forward_batchnorm_layer]
	str	w8, [x9, #236]
	adrp	x8, backward_batchnorm_layer
	ldr	w8, [x8, :lo12:backward_batchnorm_layer]
	str	w8, [x9, #232]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_batchnorm_layer, .Lfunc_end0-make_batchnorm_layer
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Batch Normalization Layer: %d x %d x %d image\n"
	.size	.L.str, 47
	.type	BATCHNORM,@object               // @BATCHNORM
	.bss
	.globl	BATCHNORM
	.p2align	2
BATCHNORM:
	.word	0                               // 0x0
	.size	BATCHNORM, 4
	.type	forward_batchnorm_layer,@object // @forward_batchnorm_layer
	.globl	forward_batchnorm_layer
	.p2align	2
forward_batchnorm_layer:
	.word	0                               // 0x0
	.size	forward_batchnorm_layer, 4
	.type	backward_batchnorm_layer,@object // @backward_batchnorm_layer
	.globl	backward_batchnorm_layer
	.p2align	2
backward_batchnorm_layer:
	.word	0                               // 0x0
	.size	backward_batchnorm_layer, 4
	.type	CUDNN_DATA_FLOAT,@object        // @CUDNN_DATA_FLOAT
	.globl	CUDNN_DATA_FLOAT
	.p2align	2
CUDNN_DATA_FLOAT:
	.word	0                               // 0x0
	.size	CUDNN_DATA_FLOAT, 4
	.type	CUDNN_TENSOR_NCHW,@object       // @CUDNN_TENSOR_NCHW
	.globl	CUDNN_TENSOR_NCHW
	.p2align	2
CUDNN_TENSOR_NCHW:
	.word	0                               // 0x0
	.size	CUDNN_TENSOR_NCHW, 4
	.type	backward_batchnorm_layer_gpu,@object // @backward_batchnorm_layer_gpu
	.globl	backward_batchnorm_layer_gpu
	.p2align	2
backward_batchnorm_layer_gpu:
	.word	0                               // 0x0
	.size	backward_batchnorm_layer_gpu, 4
	.type	forward_batchnorm_layer_gpu,@object // @forward_batchnorm_layer_gpu
	.globl	forward_batchnorm_layer_gpu
	.p2align	2
forward_batchnorm_layer_gpu:
	.word	0                               // 0x0
	.size	forward_batchnorm_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym BATCHNORM
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym backward_batchnorm_layer