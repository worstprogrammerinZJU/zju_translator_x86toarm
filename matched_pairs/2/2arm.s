	.text
	.globl	make_activation_layer           // -- Begin function make_activation_layer
	.p2align	2
	.type	make_activation_layer,@function
make_activation_layer:                  // @make_activation_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mov	w8, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	stur	w8, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	mov	w1, wzr
	mov	x2, #72
	bl	memset
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, ACTIVE
	ldr	w8, [x8, :lo12:ACTIVE]
	str	w8, [x9, #64]
	ldur	w8, [x29, #-8]
	str	w8, [x9]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	mul	w0, w8, w9
	mov	w1, #8
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #32]
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #16]
	adrp	x8, forward_activation_layer
	ldr	w8, [x8, :lo12:forward_activation_layer]
	str	w8, [x9, #60]
	adrp	x8, backward_activation_layer
	ldr	w8, [x8, :lo12:backward_activation_layer]
	str	w8, [x9, #56]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #12]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_activation_layer, .Lfunc_end0-make_activation_layer
                                        // -- End function
	.type	ACTIVE,@object                  // @ACTIVE
	.bss
	.globl	ACTIVE
	.p2align	2
ACTIVE:
	.word	0                               // 0x0
	.size	ACTIVE, 4
	.type	forward_activation_layer,@object // @forward_activation_layer
	.globl	forward_activation_layer
	.p2align	2
forward_activation_layer:
	.word	0                               // 0x0
	.size	forward_activation_layer, 4
	.type	backward_activation_layer,@object // @backward_activation_layer
	.globl	backward_activation_layer
	.p2align	2
backward_activation_layer:
	.word	0                               // 0x0
	.size	backward_activation_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Activation Layer: %d inputs\n"
	.size	.L.str, 29
	.type	backward_activation_layer_gpu,@object // @backward_activation_layer_gpu
	.bss
	.globl	backward_activation_layer_gpu
	.p2align	2
backward_activation_layer_gpu:
	.word	0                               // 0x0
	.size	backward_activation_layer_gpu, 4
	.type	forward_activation_layer_gpu,@object // @forward_activation_layer_gpu
	.globl	forward_activation_layer_gpu
	.p2align	2
forward_activation_layer_gpu:
	.word	0                               // 0x0
	.size	forward_activation_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym ACTIVE
	.addrsig_sym forward_activation_layer
	.addrsig_sym backward_activation_layer
	.addrsig_sym stderr