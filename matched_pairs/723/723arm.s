	.text
	.globl	resize_deconvolutional_layer    // -- Begin function resize_deconvolutional_layer
	.p2align	2
	.type	resize_deconvolutional_layer,@function
resize_deconvolutional_layer:           // @resize_deconvolutional_layer
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	add	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w10, [x9, #20]
	mov	w9, #2
	mul	w10, w9, w10
	subs	w8, w8, w10
	ldur	x10, [x29, #-8]
	str	w8, [x10, #8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	subs	w8, w8, #1
	ldur	x10, [x29, #-8]
	ldr	w10, [x10, #12]
	mul	w8, w8, w10
	ldur	x10, [x29, #-8]
	ldr	w10, [x10, #16]
	add	w8, w8, w10
	ldur	x10, [x29, #-8]
	ldr	w10, [x10, #20]
	mul	w9, w9, w10
	subs	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #24]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #32]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #28]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #40]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #36]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #64]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #44]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #28]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #64]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #104]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #44]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #28]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #104]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #88]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #128]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #44]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #28]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #128]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #120]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #44]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #28]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #120]
	b	.LBB0_2
.LBB0_2:
	ldur	x1, [x29, #-8]
	add	x0, sp, #8
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	x2, #136
	bl	memcpy
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	get_workspace_size
	ldur	x8, [x29, #-8]
	str	w0, [x8, #48]
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	resize_deconvolutional_layer, .Lfunc_end0-resize_deconvolutional_layer
                                        // -- End function
	.type	CUDNN_DATA_FLOAT,@object        // @CUDNN_DATA_FLOAT
	.bss
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc
	.addrsig_sym get_workspace_size