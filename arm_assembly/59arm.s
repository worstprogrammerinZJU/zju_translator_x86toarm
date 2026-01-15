	.text
	.globl	make_avgpool_layer              // -- Begin function make_avgpool_layer
	.p2align	2
	.type	make_avgpool_layer,@function
make_avgpool_layer:                     // @make_avgpool_layer
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
	ldur	w5, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #96
	bl	memset
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	adrp	x9, AVGPOOL
	ldr	w9, [x9, :lo12:AVGPOOL]
	str	w9, [x8, #88]
	ldur	w9, [x29, #-4]
	str	w9, [x8]
	ldur	w9, [x29, #-12]
	str	w9, [x8, #4]
	ldur	w9, [x29, #-8]
	str	w9, [x8, #8]
	ldur	w9, [x29, #-16]
	str	w9, [x8, #12]
	mov	w9, #1
	str	w9, [x8, #16]
	str	w9, [x8, #20]
	ldur	w9, [x29, #-16]
	str	w9, [x8, #24]
	ldr	w9, [x8, #24]
	str	w9, [x8, #28]
	ldur	w9, [x29, #-12]
	ldur	w10, [x29, #-8]
	mul	w9, w9, w10
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	str	w9, [x8, #32]
	ldr	w8, [x8, #28]
	ldur	w9, [x29, #-4]
	mul	w8, w8, w9
	stur	w8, [x29, #-20]
	ldur	w0, [x29, #-20]
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #56]
	ldur	w0, [x29, #-20]
	bl	calloc
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #40]
	adrp	x8, forward_avgpool_layer
	ldr	w8, [x8, :lo12:forward_avgpool_layer]
	str	w8, [x9, #84]
	adrp	x8, backward_avgpool_layer
	ldr	w8, [x8, :lo12:backward_avgpool_layer]
	str	w8, [x9, #80]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_avgpool_layer, .Lfunc_end0-make_avgpool_layer
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
	.asciz	"avg                     %4d x%4d x%4d   ->  %4d\n"
	.size	.L.str, 49
	.type	AVGPOOL,@object                 // @AVGPOOL
	.bss
	.globl	AVGPOOL
	.p2align	2
AVGPOOL:
	.word	0                               // 0x0
	.size	AVGPOOL, 4
	.type	forward_avgpool_layer,@object   // @forward_avgpool_layer
	.globl	forward_avgpool_layer
	.p2align	2
forward_avgpool_layer:
	.word	0                               // 0x0
	.size	forward_avgpool_layer, 4
	.type	backward_avgpool_layer,@object  // @backward_avgpool_layer
	.globl	backward_avgpool_layer
	.p2align	2
backward_avgpool_layer:
	.word	0                               // 0x0
	.size	backward_avgpool_layer, 4
	.type	backward_avgpool_layer_gpu,@object // @backward_avgpool_layer_gpu
	.globl	backward_avgpool_layer_gpu
	.p2align	2
backward_avgpool_layer_gpu:
	.word	0                               // 0x0
	.size	backward_avgpool_layer_gpu, 4
	.type	forward_avgpool_layer_gpu,@object // @forward_avgpool_layer_gpu
	.globl	forward_avgpool_layer_gpu
	.p2align	2
forward_avgpool_layer_gpu:
	.word	0                               // 0x0
	.size	forward_avgpool_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym AVGPOOL
	.addrsig_sym forward_avgpool_layer
	.addrsig_sym backward_avgpool_layer