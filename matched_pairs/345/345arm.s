	.text
	.globl	make_connected_layer            // -- Begin function make_connected_layer
	.p2align	2
	.type	make_connected_layer,@function
make_connected_layer:                   // @make_connected_layer
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	w5, [x29, #-24]
	mov	w1, wzr
	mov	x2, #456
	bl	memset
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	mov	w8, #1
	str	w8, [x9]
	adrp	x10, CONNECTED
	ldr	w10, [x10, :lo12:CONNECTED]
	str	w10, [x9, #444]
	ldur	w10, [x29, #-8]
	str	w10, [x9, #4]
	ldur	w10, [x29, #-12]
	str	w10, [x9, #8]
	ldur	w10, [x29, #-4]
	str	w10, [x9, #12]
	ldur	w10, [x29, #-20]
	str	w10, [x9, #16]
	str	w8, [x9, #20]
	str	w8, [x9, #24]
	ldur	w10, [x29, #-8]
	str	w10, [x9, #28]
	str	w8, [x9, #32]
	str	w8, [x9, #36]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #40]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-12]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-12]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-12]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #80]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x9, #88]
	adrp	x8, forward_connected_layer
	ldr	w8, [x8, :lo12:forward_connected_layer]
	str	w8, [x9, #440]
	adrp	x8, backward_connected_layer
	ldr	w8, [x8, :lo12:backward_connected_layer]
	str	w8, [x9, #436]
	adrp	x8, update_connected_layer
	ldr	w8, [x8, :lo12:update_connected_layer]
	str	w8, [x9, #432]
	ldur	s1, [x29, #-8]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d1, d0
	fmov	d0, #2.00000000
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	bl	sqrt
	str	s0, [sp, #32]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #32]
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	mov	w0, #-1
	mov	w1, #1
	bl	rand_uniform
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	fmov	s1, s0
	ldr	s0, [sp, #16]                   // 4-byte Folded Reload
	fmul	s0, s0, s1
	ldr	x8, [x8, #80]
	ldursw	x9, [x29, #-28]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_1
.LBB0_4:
	stur	wzr, [x29, #-28]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	x9, [x8, #88]
	ldursw	x10, [x29, #-28]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_5
.LBB0_8:
	ldur	w8, [x29, #-24]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w8, [x9, #4]
	ldr	w9, [x9, #8]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x9, #424]
	ldr	w8, [x9, #4]
	ldr	w9, [x9, #8]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #416]
	ldr	w0, [x8, #8]
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #408]
	ldr	w0, [x8, #8]
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #400]
	ldr	w0, [x8, #8]
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #392]
	ldr	w0, [x8, #8]
	bl	calloc
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #384]
	b	.LBB0_10
.LBB0_10:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_16
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-12]
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #96]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #104]
	stur	wzr, [x29, #-28]
	b	.LBB0_12
.LBB0_12:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_12 Depth=1
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	x9, [x8, #96]
	ldursw	x10, [x29, #-28]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_12 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_12
.LBB0_15:
	ldur	w0, [x29, #-12]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #112]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #376]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #120]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #368]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #360]
	ldur	w0, [x29, #-12]
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #352]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-12]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #344]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-12]
	mul	w0, w8, w9
	bl	calloc
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #336]
	b	.LBB0_16
.LBB0_16:
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	str	w8, [x9, #128]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_connected_layer, .Lfunc_end0-make_connected_layer
                                        // -- End function
	.type	CONNECTED,@object               // @CONNECTED
	.bss
	.globl	CONNECTED
	.p2align	2
CONNECTED:
	.word	0                               // 0x0
	.size	CONNECTED, 4
	.type	forward_connected_layer,@object // @forward_connected_layer
	.globl	forward_connected_layer
	.p2align	2
forward_connected_layer:
	.word	0                               // 0x0
	.size	forward_connected_layer, 4
	.type	backward_connected_layer,@object // @backward_connected_layer
	.globl	backward_connected_layer
	.p2align	2
backward_connected_layer:
	.word	0                               // 0x0
	.size	backward_connected_layer, 4
	.type	update_connected_layer,@object  // @update_connected_layer
	.globl	update_connected_layer
	.p2align	2
update_connected_layer:
	.word	0                               // 0x0
	.size	update_connected_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"connected                            %4d  ->  %4d\n"
	.size	.L.str, 51
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
	.type	backward_connected_layer_gpu,@object // @backward_connected_layer_gpu
	.globl	backward_connected_layer_gpu
	.p2align	2
backward_connected_layer_gpu:
	.word	0                               // 0x0
	.size	backward_connected_layer_gpu, 4
	.type	forward_connected_layer_gpu,@object // @forward_connected_layer_gpu
	.globl	forward_connected_layer_gpu
	.p2align	2
forward_connected_layer_gpu:
	.word	0                               // 0x0
	.size	forward_connected_layer_gpu, 4
	.type	update_connected_layer_gpu,@object // @update_connected_layer_gpu
	.globl	update_connected_layer_gpu
	.p2align	2
update_connected_layer_gpu:
	.word	0                               // 0x0
	.size	update_connected_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym sqrt
	.addrsig_sym rand_uniform
	.addrsig_sym fprintf
	.addrsig_sym CONNECTED
	.addrsig_sym forward_connected_layer
	.addrsig_sym backward_connected_layer
	.addrsig_sym update_connected_layer
	.addrsig_sym stderr