	.text
	.globl	make_iseg_layer                 // -- Begin function make_iseg_layer
	.p2align	2
	.type	make_iseg_layer,@function
make_iseg_layer:                        // @make_iseg_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	mov	w1, wzr
	mov	x2, #128
	bl	memset
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, ISEG
	ldr	w8, [x8, :lo12:ISEG]
	str	w8, [x9, #120]
	ldur	w8, [x29, #-12]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-16]
	ldur	w10, [x29, #-20]
	add	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w8, [x9, #4]
	str	w8, [x9, #12]
	ldr	w8, [x9]
	str	w8, [x9, #16]
	ldr	w8, [x9, #8]
	str	w8, [x9, #20]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #24]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #28]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #32]
	mov	w0, #1
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #112]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-8]
	mul	w8, w8, w10
	ldr	w10, [x9, #8]
	mul	w8, w8, w10
	str	w8, [x9, #36]
	ldr	w8, [x9, #36]
	str	w8, [x9, #40]
	ldr	w8, [x9, #4]
	ldr	w10, [x9]
	mul	w8, w8, w10
	add	w10, w8, #1
	mov	w8, #90
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	mul	w8, w8, w10
	str	w8, [x9, #44]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #36]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #48]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #36]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	str	x8, [x9, #64]
	bl	calloc
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	str	x8, [x9, #104]
	mov	w1, #8
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #96]
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #24]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #90
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	w0, [x29, #-20]
	mov	w1, #4
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #96]
	ldrsw	x9, [sp, #24]
	str	x0, [x8, x9, lsl #3]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, forward_iseg_layer
	ldr	w8, [x8, :lo12:forward_iseg_layer]
	str	w8, [x9, #92]
	adrp	x8, backward_iseg_layer
	ldr	w8, [x8, :lo12:backward_iseg_layer]
	str	w8, [x9, #88]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	mov	w0, wzr
	bl	srand
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_iseg_layer, .Lfunc_end0-make_iseg_layer
                                        // -- End function
	.type	ISEG,@object                    // @ISEG
	.bss
	.globl	ISEG
	.p2align	2
ISEG:
	.word	0                               // 0x0
	.size	ISEG, 4
	.type	forward_iseg_layer,@object      // @forward_iseg_layer
	.globl	forward_iseg_layer
	.p2align	2
forward_iseg_layer:
	.word	0                               // 0x0
	.size	forward_iseg_layer, 4
	.type	backward_iseg_layer,@object     // @backward_iseg_layer
	.globl	backward_iseg_layer
	.p2align	2
backward_iseg_layer:
	.word	0                               // 0x0
	.size	backward_iseg_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"iseg\n"
	.size	.L.str, 6
	.type	backward_iseg_layer_gpu,@object // @backward_iseg_layer_gpu
	.bss
	.globl	backward_iseg_layer_gpu
	.p2align	2
backward_iseg_layer_gpu:
	.word	0                               // 0x0
	.size	backward_iseg_layer_gpu, 4
	.type	forward_iseg_layer_gpu,@object  // @forward_iseg_layer_gpu
	.globl	forward_iseg_layer_gpu
	.p2align	2
forward_iseg_layer_gpu:
	.word	0                               // 0x0
	.size	forward_iseg_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym srand
	.addrsig_sym ISEG
	.addrsig_sym forward_iseg_layer
	.addrsig_sym backward_iseg_layer
	.addrsig_sym stderr