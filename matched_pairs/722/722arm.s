	.text
	.globl	make_deconvolutional_layer      // -- Begin function make_deconvolutional_layer
	.p2align	2
	.type	make_deconvolutional_layer,@function
make_deconvolutional_layer:             // @make_deconvolutional_layer
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #608
	str	x8, [sp, #64]                   // 8-byte Folded Spill
	mov	w11, w0
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	ldr	w10, [x29, #32]
	ldr	w9, [x29, #40]
	ldr	w8, [x29, #48]
	stur	w11, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	w5, [x29, #-24]
	stur	w6, [x29, #-28]
	stur	w7, [x29, #-32]
	stur	w10, [x29, #-36]
	stur	w9, [x29, #-40]
	stur	w8, [x29, #-44]
	mov	w1, wzr
	mov	x2, #480
	bl	memset
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	adrp	x8, DECONVOLUTIONAL
	ldr	w8, [x8, :lo12:DECONVOLUTIONAL]
	str	w8, [x9, #468]
	ldur	w8, [x29, #-8]
	str	w8, [x9]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #16]
	ldur	w8, [x29, #-28]
	str	w8, [x9, #20]
	ldur	w8, [x29, #-24]
	str	w8, [x9, #24]
	ldur	w8, [x29, #-16]
	ldur	w10, [x29, #-20]
	mul	w8, w8, w10
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	ldur	w10, [x29, #-24]
	mul	w8, w8, w10
	str	w8, [x9, #28]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #32]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #60]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #60]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #60]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #60]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	mov	w8, #55050
	movk	w8, #15523, lsl #16
	fmov	s0, w8
	stur	s0, [x29, #-52]
	stur	wzr, [x29, #-48]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-48]
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-52]
	str	s0, [sp, #56]                   // 4-byte Folded Spill
	bl	rand_normal
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	fmov	s1, s0
	ldr	s0, [sp, #56]                   // 4-byte Folded Reload
	fmul	s0, s0, s1
	ldr	x8, [x8, #40]
	ldursw	x9, [x29, #-48]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-48]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_1
.LBB0_4:
	stur	wzr, [x29, #-48]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-48]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x9, [x8, #56]
	ldursw	x10, [x29, #-48]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-48]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_5
.LBB0_8:
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldur	w9, [x29, #-32]
	str	w9, [x8, #72]
	ldr	w9, [x8]
	mov	w2, #1
	subs	w9, w9, #1
	ldr	w10, [x8, #20]
	mul	w9, w9, w10
	ldr	w10, [x8, #24]
	add	w9, w9, w10
	ldr	w11, [x8, #72]
	mov	w10, #2
	mul	w11, w10, w11
	subs	w9, w9, w11
	str	w9, [x8, #76]
	ldr	w9, [x8, #4]
	subs	w9, w9, #1
	ldr	w11, [x8, #20]
	mul	w9, w9, w11
	ldr	w11, [x8, #24]
	add	w9, w9, w11
	ldr	w11, [x8, #72]
	mul	w10, w10, w11
	subs	w9, w9, w10
	str	w9, [x8, #80]
	ldur	w9, [x29, #-20]
	str	w9, [x8, #84]
	ldr	w9, [x8, #80]
	ldr	w10, [x8, #76]
	mul	w9, w9, w10
	ldr	w10, [x8, #84]
	mul	w9, w9, w10
	str	w9, [x8, #88]
	ldr	w9, [x8, #4]
	ldr	w10, [x8]
	mul	w9, w9, w10
	ldr	w10, [x8, #8]
	mul	w9, w9, w10
	str	w9, [x8, #92]
	ldr	w0, [x8, #28]
	ldr	s0, [x8, #80]
	scvtf	s0, s0
	ldr	s1, [x8, #76]
	scvtf	s1, s1
	fmul	s0, s0, s1
	ldr	w9, [x8, #4]
	ldr	w10, [x8]
	mul	w9, w9, w10
	scvtf	s1, w9
	fdiv	s0, s0, s1
	ldr	x1, [x8, #40]
	bl	scal_cpu
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #88]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #52]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #52]                   // 4-byte Folded Reload
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x9, #96]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #88]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x9, #104]
	adrp	x8, forward_deconvolutional_layer
	ldr	w8, [x8, :lo12:forward_deconvolutional_layer]
	str	w8, [x9, #464]
	adrp	x8, backward_deconvolutional_layer
	ldr	w8, [x8, :lo12:backward_deconvolutional_layer]
	str	w8, [x9, #460]
	adrp	x8, update_deconvolutional_layer
	ldr	w8, [x8, :lo12:update_deconvolutional_layer]
	str	w8, [x9, #456]
	ldur	w8, [x29, #-40]
	str	w8, [x9, #112]
	ldur	w8, [x29, #-40]
	cbz	w8, .LBB0_14
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-20]
	mov	w1, #4
	str	w1, [sp, #48]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #120]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #448]
	stur	wzr, [x29, #-48]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-48]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x9, [x8, #120]
	ldursw	x10, [x29, #-48]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-48]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_10
.LBB0_13:
	ldur	w0, [x29, #-20]
	mov	w1, #4
	str	w1, [sp, #44]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #440]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #432]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #424]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #416]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #408]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x9, #400]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #88]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #44]                   // 4-byte Folded Reload
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x9, #392]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #88]
	mul	w0, w8, w9
	bl	calloc
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #384]
	b	.LBB0_14
.LBB0_14:
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #40]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #40]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #128]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #40]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #136]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #40]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #144]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #40]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #152]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	w1, [sp, #40]                   // 4-byte Folded Reload
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #160]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	x0, [x8, #168]
	b	.LBB0_16
.LBB0_16:
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-36]
	str	w8, [x1, #180]
	add	x0, sp, #72
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	x2, #480
	bl	memcpy
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	get_workspace_size
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	str	w0, [x8, #176]
	adrp	x9, stderr
	ldr	w0, [x9, :lo12:stderr]
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-24]
	ldur	w4, [x29, #-24]
	ldur	w5, [x29, #-28]
	ldur	w6, [x29, #-12]
	ldur	w7, [x29, #-8]
	ldur	w12, [x29, #-16]
	ldr	w11, [x8, #80]
	ldr	w10, [x8, #76]
	ldr	w8, [x8, #84]
	mov	x9, sp
	str	w12, [x9]
	str	w11, [x9, #8]
	str	w10, [x9, #16]
	str	w8, [x9, #24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	add	sp, sp, #608
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	make_deconvolutional_layer, .Lfunc_end0-make_deconvolutional_layer
                                        // -- End function
	.type	DECONVOLUTIONAL,@object         // @DECONVOLUTIONAL
	.bss
	.globl	DECONVOLUTIONAL
	.p2align	2
DECONVOLUTIONAL:
	.word	0                               // 0x0
	.size	DECONVOLUTIONAL, 4
	.type	forward_deconvolutional_layer,@object // @forward_deconvolutional_layer
	.globl	forward_deconvolutional_layer
	.p2align	2
forward_deconvolutional_layer:
	.word	0                               // 0x0
	.size	forward_deconvolutional_layer, 4
	.type	backward_deconvolutional_layer,@object // @backward_deconvolutional_layer
	.globl	backward_deconvolutional_layer
	.p2align	2
backward_deconvolutional_layer:
	.word	0                               // 0x0
	.size	backward_deconvolutional_layer, 4
	.type	update_deconvolutional_layer,@object // @update_deconvolutional_layer
	.globl	update_deconvolutional_layer
	.p2align	2
update_deconvolutional_layer:
	.word	0                               // 0x0
	.size	update_deconvolutional_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"deconv%5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.size	.L.str, 60
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
	.type	backward_deconvolutional_layer_gpu,@object // @backward_deconvolutional_layer_gpu
	.globl	backward_deconvolutional_layer_gpu
	.p2align	2
backward_deconvolutional_layer_gpu:
	.word	0                               // 0x0
	.size	backward_deconvolutional_layer_gpu, 4
	.type	forward_deconvolutional_layer_gpu,@object // @forward_deconvolutional_layer_gpu
	.globl	forward_deconvolutional_layer_gpu
	.p2align	2
forward_deconvolutional_layer_gpu:
	.word	0                               // 0x0
	.size	forward_deconvolutional_layer_gpu, 4
	.type	gpu_index,@object               // @gpu_index
	.globl	gpu_index
	.p2align	3
gpu_index:
	.xword	0                               // 0x0
	.size	gpu_index, 8
	.type	update_deconvolutional_layer_gpu,@object // @update_deconvolutional_layer_gpu
	.globl	update_deconvolutional_layer_gpu
	.p2align	2
update_deconvolutional_layer_gpu:
	.word	0                               // 0x0
	.size	update_deconvolutional_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand_normal
	.addrsig_sym scal_cpu
	.addrsig_sym get_workspace_size
	.addrsig_sym fprintf
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym forward_deconvolutional_layer
	.addrsig_sym backward_deconvolutional_layer
	.addrsig_sym update_deconvolutional_layer
	.addrsig_sym stderr