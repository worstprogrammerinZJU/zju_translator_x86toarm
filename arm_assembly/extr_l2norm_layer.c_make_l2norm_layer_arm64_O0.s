	.text
	.globl	make_l2norm_layer               // -- Begin function make_l2norm_layer
	.p2align	2
	.type	make_l2norm_layer,@function
make_l2norm_layer:                      // @make_l2norm_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #88
	bl	memset
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, L2NORM
	ldr	w8, [x8, :lo12:L2NORM]
	str	w8, [x9, #80]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #32]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x9, #16]
	adrp	x8, forward_l2norm_layer
	ldr	w8, [x8, :lo12:forward_l2norm_layer]
	str	w8, [x9, #68]
	adrp	x8, backward_l2norm_layer
	ldr	w8, [x8, :lo12:backward_l2norm_layer]
	str	w8, [x9, #64]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_l2norm_layer, .Lfunc_end0-make_l2norm_layer
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
	.asciz	"l2norm                                         %4d\n"
	.size	.L.str, 52
	.type	L2NORM,@object                  // @L2NORM
	.bss
	.globl	L2NORM
	.p2align	2
L2NORM:
	.word	0                               // 0x0
	.size	L2NORM, 4
	.type	forward_l2norm_layer,@object    // @forward_l2norm_layer
	.globl	forward_l2norm_layer
	.p2align	2
forward_l2norm_layer:
	.word	0                               // 0x0
	.size	forward_l2norm_layer, 4
	.type	backward_l2norm_layer,@object   // @backward_l2norm_layer
	.globl	backward_l2norm_layer
	.p2align	2
backward_l2norm_layer:
	.word	0                               // 0x0
	.size	backward_l2norm_layer, 4
	.type	backward_l2norm_layer_gpu,@object // @backward_l2norm_layer_gpu
	.globl	backward_l2norm_layer_gpu
	.p2align	2
backward_l2norm_layer_gpu:
	.word	0                               // 0x0
	.size	backward_l2norm_layer_gpu, 4
	.type	forward_l2norm_layer_gpu,@object // @forward_l2norm_layer_gpu
	.globl	forward_l2norm_layer_gpu
	.p2align	2
forward_l2norm_layer_gpu:
	.word	0                               // 0x0
	.size	forward_l2norm_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym L2NORM
	.addrsig_sym forward_l2norm_layer
	.addrsig_sym backward_l2norm_layer