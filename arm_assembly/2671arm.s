	.text
	.globl	make_yolo_layer                 // -- Begin function make_yolo_layer
	.p2align	2
	.type	make_yolo_layer,@function
make_yolo_layer:                        // @make_yolo_layer
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	str	x5, [sp, #32]
	str	w6, [sp, #28]
	mov	w1, wzr
	mov	x2, #144
	bl	memset
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, YOLO
	ldr	w8, [x8, :lo12:YOLO]
	str	w8, [x9, #136]
	ldur	w8, [x29, #-16]
	str	w8, [x9]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #16]
	ldur	w8, [x29, #-16]
	ldr	w10, [sp, #28]
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	add	w10, w10, #4
	mov	w0, #1
	add	w10, w10, #1
	mul	w8, w8, w10
	str	w8, [x9, #20]
	ldr	w8, [x9, #16]
	str	w8, [x9, #24]
	ldr	w8, [x9, #12]
	str	w8, [x9, #28]
	ldr	w8, [x9, #20]
	str	w8, [x9, #32]
	ldr	w8, [sp, #28]
	str	w8, [x9, #36]
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #128]
	ldur	w8, [x29, #-20]
	lsl	w0, w8, #1
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #32]
	str	x8, [x9, #48]
	b	.LBB0_7
.LBB0_2:
	ldur	w0, [x29, #-16]
	mov	w1, #4
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	str	wzr, [sp, #24]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #24]
	ldr	x9, [x9, #48]
	ldrsw	x10, [sp, #24]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_3
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-16]
	lsl	w0, w8, #1
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #120]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-8]
	mul	w8, w8, w10
	ldur	w10, [x29, #-16]
	mul	w8, w8, w10
	ldr	w10, [sp, #28]
	add	w10, w10, #4
	add	w10, w10, #1
	mul	w8, w8, w10
	str	w8, [x9, #56]
	ldr	w8, [x9, #56]
	str	w8, [x9, #60]
	mov	w8, #450
	str	w8, [x9, #64]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #56]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #72]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #56]
	mul	w0, w8, w9
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #88]
	str	wzr, [sp, #24]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9, lsl #1
	b.ge	.LBB0_11
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #40]
	ldrsw	x9, [sp, #24]
	fmov	d0, #0.50000000
	str	d0, [x8, x9, lsl #3]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_8
.LBB0_11:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, forward_yolo_layer
	ldr	w8, [x8, :lo12:forward_yolo_layer]
	str	w8, [x9, #116]
	adrp	x8, backward_yolo_layer
	ldr	w8, [x8, :lo12:backward_yolo_layer]
	str	w8, [x9, #112]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	mov	w0, wzr
	bl	srand
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_yolo_layer, .Lfunc_end0-make_yolo_layer
                                        // -- End function
	.type	YOLO,@object                    // @YOLO
	.bss
	.globl	YOLO
	.p2align	2
YOLO:
	.word	0                               // 0x0
	.size	YOLO, 4
	.type	forward_yolo_layer,@object      // @forward_yolo_layer
	.globl	forward_yolo_layer
	.p2align	2
forward_yolo_layer:
	.word	0                               // 0x0
	.size	forward_yolo_layer, 4
	.type	backward_yolo_layer,@object     // @backward_yolo_layer
	.globl	backward_yolo_layer
	.p2align	2
backward_yolo_layer:
	.word	0                               // 0x0
	.size	backward_yolo_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"yolo\n"
	.size	.L.str, 6
	.type	backward_yolo_layer_gpu,@object // @backward_yolo_layer_gpu
	.bss
	.globl	backward_yolo_layer_gpu
	.p2align	2
backward_yolo_layer_gpu:
	.word	0                               // 0x0
	.size	backward_yolo_layer_gpu, 4
	.type	forward_yolo_layer_gpu,@object  // @forward_yolo_layer_gpu
	.globl	forward_yolo_layer_gpu
	.p2align	2
forward_yolo_layer_gpu:
	.word	0                               // 0x0
	.size	forward_yolo_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym srand
	.addrsig_sym YOLO
	.addrsig_sym forward_yolo_layer
	.addrsig_sym backward_yolo_layer
	.addrsig_sym stderr