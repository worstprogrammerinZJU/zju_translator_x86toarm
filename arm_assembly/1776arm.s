	.text
	.globl	set_batch_network               // -- Begin function set_batch_network
	.p2align	2
	.type	set_batch_network,@function
set_batch_network:                      // @set_batch_network
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	str	wzr, [sp]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp]
	mov	x11, #40
	mul	x10, x10, x11
	str	w8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	set_batch_network, .Lfunc_end0-set_batch_network
                                        // -- End function
	.type	CONVOLUTIONAL,@object           // @CONVOLUTIONAL
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.xword	0                               // 0x0
	.size	CONVOLUTIONAL, 8
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
	.type	DECONVOLUTIONAL,@object         // @DECONVOLUTIONAL
	.globl	DECONVOLUTIONAL
	.p2align	3
DECONVOLUTIONAL:
	.xword	0                               // 0x0
	.size	DECONVOLUTIONAL, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig