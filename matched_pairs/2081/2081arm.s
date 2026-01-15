	.text
	.globl	make_region_layer               // -- Begin function make_region_layer
	.p2align	2
	.type	make_region_layer,@function
make_region_layer:                      // @make_region_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	str	w5, [sp, #24]
	mov	w1, wzr
	mov	x2, #136
	bl	memset
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, REGION
	ldr	w8, [x8, :lo12:REGION]
	str	w8, [x9, #128]
	ldur	w8, [x29, #-16]
	str	w8, [x9]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-16]
	ldur	w10, [x29, #-20]
	ldr	w11, [sp, #24]
	add	w10, w10, w11
	mov	w0, #1
	add	w10, w10, #1
	mul	w8, w8, w10
	str	w8, [x9, #16]
	ldr	w8, [x9, #12]
	str	w8, [x9, #20]
	ldr	w8, [x9, #8]
	str	w8, [x9, #24]
	ldr	w8, [x9, #16]
	str	w8, [x9, #28]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #32]
	ldr	w8, [sp, #24]
	str	w8, [x9, #36]
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #120]
	ldur	w8, [x29, #-16]
	lsl	w0, w8, #1
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #40]
	ldur	w8, [x29, #-16]
	lsl	w0, w8, #1
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #112]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-8]
	mul	w8, w8, w10
	ldur	w10, [x29, #-16]
	mul	w8, w8, w10
	ldur	w10, [x29, #-20]
	ldr	w11, [sp, #24]
	add	w10, w10, w11
	add	w10, w10, #1
	mul	w8, w8, w10
	str	w8, [x9, #48]
	ldr	w8, [x9, #48]
	str	w8, [x9, #52]
	ldr	w8, [x9, #36]
	add	w10, w8, #1
	mov	w8, #30
	mul	w8, w8, w10
	str	w8, [x9, #56]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #48]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #64]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #48]
	mul	w0, w8, w9
	bl	calloc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #80]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9, lsl #1
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #40]
	ldrsw	x9, [sp, #20]
	fmov	d0, #0.50000000
	str	d0, [x8, x9, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, forward_region_layer
	ldr	w8, [x8, :lo12:forward_region_layer]
	str	w8, [x9, #108]
	adrp	x8, backward_region_layer
	ldr	w8, [x8, :lo12:backward_region_layer]
	str	w8, [x9, #104]
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
	.size	make_region_layer, .Lfunc_end0-make_region_layer
                                        // -- End function
	.type	REGION,@object                  // @REGION
	.bss
	.globl	REGION
	.p2align	2
REGION:
	.word	0                               // 0x0
	.size	REGION, 4
	.type	forward_region_layer,@object    // @forward_region_layer
	.globl	forward_region_layer
	.p2align	2
forward_region_layer:
	.word	0                               // 0x0
	.size	forward_region_layer, 4
	.type	backward_region_layer,@object   // @backward_region_layer
	.globl	backward_region_layer
	.p2align	2
backward_region_layer:
	.word	0                               // 0x0
	.size	backward_region_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"detection\n"
	.size	.L.str, 11
	.type	backward_region_layer_gpu,@object // @backward_region_layer_gpu
	.bss
	.globl	backward_region_layer_gpu
	.p2align	2
backward_region_layer_gpu:
	.word	0                               // 0x0
	.size	backward_region_layer_gpu, 4
	.type	forward_region_layer_gpu,@object // @forward_region_layer_gpu
	.globl	forward_region_layer_gpu
	.p2align	2
forward_region_layer_gpu:
	.word	0                               // 0x0
	.size	forward_region_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym srand
	.addrsig_sym REGION
	.addrsig_sym forward_region_layer
	.addrsig_sym backward_region_layer
	.addrsig_sym stderr