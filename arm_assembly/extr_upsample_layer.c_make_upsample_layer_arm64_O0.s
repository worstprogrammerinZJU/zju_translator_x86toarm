	.text
	.globl	make_upsample_layer             // -- Begin function make_upsample_layer
	.p2align	2
	.type	make_upsample_layer,@function
make_upsample_layer:                    // @make_upsample_layer
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
	mov	x2, #104
	bl	memset
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, UPSAMPLE
	ldr	w8, [x8, :lo12:UPSAMPLE]
	str	w8, [x9, #96]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-20]
	mul	w8, w8, w10
	str	w8, [x9, #16]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-20]
	mul	w8, w8, w10
	str	w8, [x9, #20]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #24]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w10, [x29, #-20]
	mov	w8, wzr
	subs	w8, w8, w10
	stur	w8, [x29, #-20]
	mov	w8, #1
	str	w8, [x9, #28]
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-20]
	sdiv	w8, w8, w10
	str	w8, [x9, #16]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-20]
	sdiv	w8, w8, w10
	str	w8, [x9, #20]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w9, [x29, #-20]
	str	w9, [x8, #32]
	ldr	w9, [x8, #16]
	ldr	w10, [x8, #20]
	mul	w9, w9, w10
	ldr	w10, [x8, #24]
	mul	w9, w9, w10
	str	w9, [x8, #36]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w9, w9, w10
	str	w9, [x8, #40]
	ldr	w8, [x8, #36]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	ldr	w8, [x8, #36]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	adrp	x9, forward_upsample_layer
	ldr	w9, [x9, :lo12:forward_upsample_layer]
	str	w9, [x8, #92]
	adrp	x9, backward_upsample_layer
	ldr	w9, [x9, :lo12:backward_upsample_layer]
	str	w9, [x8, #88]
	ldr	w8, [x8, #28]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, stderr
	ldr	w0, [x9, :lo12:stderr]
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-8]
	ldur	w4, [x29, #-12]
	ldur	w5, [x29, #-16]
	ldr	w6, [x8, #16]
	ldr	w7, [x8, #20]
	ldr	w8, [x8, #24]
	mov	x9, sp
	str	w8, [x9]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, stderr
	ldr	w0, [x9, :lo12:stderr]
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-8]
	ldur	w4, [x29, #-12]
	ldur	w5, [x29, #-16]
	ldr	w6, [x8, #16]
	ldr	w7, [x8, #20]
	ldr	w8, [x8, #24]
	mov	x9, sp
	str	w8, [x9]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_upsample_layer, .Lfunc_end0-make_upsample_layer
                                        // -- End function
	.type	UPSAMPLE,@object                // @UPSAMPLE
	.bss
	.globl	UPSAMPLE
	.p2align	2
UPSAMPLE:
	.word	0                               // 0x0
	.size	UPSAMPLE, 4
	.type	forward_upsample_layer,@object  // @forward_upsample_layer
	.globl	forward_upsample_layer
	.p2align	2
forward_upsample_layer:
	.word	0                               // 0x0
	.size	forward_upsample_layer, 4
	.type	backward_upsample_layer,@object // @backward_upsample_layer
	.globl	backward_upsample_layer
	.p2align	2
backward_upsample_layer:
	.word	0                               // 0x0
	.size	backward_upsample_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"downsample         %2dx  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.size	.L.str, 60
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"upsample           %2dx  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.size	.L.str.1, 60
	.type	backward_upsample_layer_gpu,@object // @backward_upsample_layer_gpu
	.bss
	.globl	backward_upsample_layer_gpu
	.p2align	2
backward_upsample_layer_gpu:
	.word	0                               // 0x0
	.size	backward_upsample_layer_gpu, 4
	.type	forward_upsample_layer_gpu,@object // @forward_upsample_layer_gpu
	.globl	forward_upsample_layer_gpu
	.p2align	2
forward_upsample_layer_gpu:
	.word	0                               // 0x0
	.size	forward_upsample_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym UPSAMPLE
	.addrsig_sym forward_upsample_layer
	.addrsig_sym backward_upsample_layer
	.addrsig_sym stderr