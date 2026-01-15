	.text
	.globl	make_dropout_layer              // -- Begin function make_dropout_layer
	.p2align	2
	.type	make_dropout_layer,@function
make_dropout_layer:                     // @make_dropout_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	s0, [x29, #-12]
	mov	w1, wzr
	mov	x2, #52
	bl	memset
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, DROPOUT
	ldr	w8, [x8, :lo12:DROPOUT]
	str	w8, [x9, #44]
	ldur	w8, [x29, #-12]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x9, #20]
	ldur	s0, [x29, #-12]
	fcvt	d1, s0
	fmov	d0, #1.00000000
	fsub	d1, d0, d1
	fdiv	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [x9, #16]
	adrp	x8, forward_dropout_layer
	ldr	w8, [x8, :lo12:forward_dropout_layer]
	str	w8, [x9, #40]
	adrp	x8, backward_dropout_layer
	ldr	w8, [x8, :lo12:backward_dropout_layer]
	str	w8, [x9, #36]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	s0, [x29, #-12]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_dropout_layer, .Lfunc_end0-make_dropout_layer
                                        // -- End function
	.type	DROPOUT,@object                 // @DROPOUT
	.bss
	.globl	DROPOUT
	.p2align	2
DROPOUT:
	.word	0                               // 0x0
	.size	DROPOUT, 4
	.type	forward_dropout_layer,@object   // @forward_dropout_layer
	.globl	forward_dropout_layer
	.p2align	2
forward_dropout_layer:
	.word	0                               // 0x0
	.size	forward_dropout_layer, 4
	.type	backward_dropout_layer,@object  // @backward_dropout_layer
	.globl	backward_dropout_layer
	.p2align	2
backward_dropout_layer:
	.word	0                               // 0x0
	.size	backward_dropout_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dropout       p = %.2f               %4d  ->  %4d\n"
	.size	.L.str, 51
	.type	backward_dropout_layer_gpu,@object // @backward_dropout_layer_gpu
	.bss
	.globl	backward_dropout_layer_gpu
	.p2align	2
backward_dropout_layer_gpu:
	.word	0                               // 0x0
	.size	backward_dropout_layer_gpu, 4
	.type	forward_dropout_layer_gpu,@object // @forward_dropout_layer_gpu
	.globl	forward_dropout_layer_gpu
	.p2align	2
forward_dropout_layer_gpu:
	.word	0                               // 0x0
	.size	forward_dropout_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym DROPOUT
	.addrsig_sym forward_dropout_layer
	.addrsig_sym backward_dropout_layer
	.addrsig_sym stderr