	.text
	.globl	make_maxpool_layer              // -- Begin function make_maxpool_layer
	.p2align	2
	.type	make_maxpool_layer,@function
make_maxpool_layer:                     // @make_maxpool_layer
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	w5, [x29, #-24]
	stur	w6, [x29, #-28]
	mov	w1, wzr
	mov	x2, #120
	bl	memset
	ldr	x9, [sp, #40]                   // 8-byte Folded Reload
	adrp	x8, MAXPOOL
	ldr	w8, [x8, :lo12:MAXPOOL]
	str	w8, [x9, #112]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-28]
	str	w8, [x9, #16]
	ldur	w8, [x29, #-12]
	ldur	w10, [x29, #-28]
	add	w8, w8, w10
	ldur	w10, [x29, #-20]
	subs	w8, w8, w10
	ldur	w10, [x29, #-24]
	sdiv	w8, w8, w10
	add	w8, w8, #1
	str	w8, [x9, #20]
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-28]
	add	w8, w8, w10
	ldur	w10, [x29, #-20]
	subs	w8, w8, w10
	ldur	w10, [x29, #-24]
	sdiv	w8, w8, w10
	add	w8, w8, #1
	str	w8, [x9, #24]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #28]
	ldr	w8, [x9, #24]
	ldr	w10, [x9, #20]
	mul	w8, w8, w10
	ldr	w10, [x9, #28]
	mul	w8, w8, w10
	str	w8, [x9, #32]
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-12]
	mul	w8, w8, w10
	ldur	w10, [x29, #-16]
	mul	w8, w8, w10
	str	w8, [x9, #36]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #40]
	ldur	w8, [x29, #-24]
	str	w8, [x9, #44]
	ldr	w8, [x9, #24]
	ldr	w10, [x9, #20]
	mul	w8, w8, w10
	ldr	w9, [x9, #28]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	stur	w8, [x29, #-32]
	ldur	w0, [x29, #-32]
	mov	w1, #4
	str	w1, [sp, #36]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #36]                   // 4-byte Folded Reload
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	str	x0, [x8, #104]
	ldur	w0, [x29, #-32]
	bl	calloc
	ldr	w1, [sp, #36]                   // 4-byte Folded Reload
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	str	x0, [x8, #64]
	ldur	w0, [x29, #-32]
	bl	calloc
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	adrp	x9, forward_maxpool_layer
	ldr	w9, [x9, :lo12:forward_maxpool_layer]
	str	w9, [x8, #96]
	adrp	x9, backward_maxpool_layer
	ldr	w9, [x9, :lo12:backward_maxpool_layer]
	str	w9, [x8, #92]
	adrp	x9, stderr
	ldr	w0, [x9, :lo12:stderr]
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-20]
	ldur	w4, [x29, #-24]
	ldur	w5, [x29, #-12]
	ldur	w6, [x29, #-8]
	ldur	w7, [x29, #-16]
	ldr	w11, [x8, #20]
	ldr	w10, [x8, #24]
	ldr	w8, [x8, #28]
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	make_maxpool_layer, .Lfunc_end0-make_maxpool_layer
                                        // -- End function
	.type	MAXPOOL,@object                 // @MAXPOOL
	.bss
	.globl	MAXPOOL
	.p2align	2
MAXPOOL:
	.word	0                               // 0x0
	.size	MAXPOOL, 4
	.type	forward_maxpool_layer,@object   // @forward_maxpool_layer
	.globl	forward_maxpool_layer
	.p2align	2
forward_maxpool_layer:
	.word	0                               // 0x0
	.size	forward_maxpool_layer, 4
	.type	backward_maxpool_layer,@object  // @backward_maxpool_layer
	.globl	backward_maxpool_layer
	.p2align	2
backward_maxpool_layer:
	.word	0                               // 0x0
	.size	backward_maxpool_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"max          %d x %d / %d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.size	.L.str, 62
	.type	backward_maxpool_layer_gpu,@object // @backward_maxpool_layer_gpu
	.bss
	.globl	backward_maxpool_layer_gpu
	.p2align	2
backward_maxpool_layer_gpu:
	.word	0                               // 0x0
	.size	backward_maxpool_layer_gpu, 4
	.type	forward_maxpool_layer_gpu,@object // @forward_maxpool_layer_gpu
	.globl	forward_maxpool_layer_gpu
	.p2align	2
forward_maxpool_layer_gpu:
	.word	0                               // 0x0
	.size	forward_maxpool_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym MAXPOOL
	.addrsig_sym forward_maxpool_layer
	.addrsig_sym backward_maxpool_layer
	.addrsig_sym stderr