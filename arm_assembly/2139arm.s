	.text
	.globl	make_softmax_layer              // -- Begin function make_softmax_layer
	.p2align	2
	.type	make_softmax_layer,@function
make_softmax_layer:                     // @make_softmax_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-12]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	mov	w9, wzr
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	assert
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	mov	x2, #96
	bl	memset
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	adrp	x8, SOFTMAX
	ldr	w8, [x8, :lo12:SOFTMAX]
	str	w8, [x9, #88]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #32]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x8, #48]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	mov	x8, x0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	str	x8, [x9, #16]
	bl	calloc
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	str	x0, [x9, #80]
	adrp	x8, forward_softmax_layer
	ldr	w8, [x8, :lo12:forward_softmax_layer]
	str	w8, [x9, #76]
	adrp	x8, backward_softmax_layer
	ldr	w8, [x8, :lo12:backward_softmax_layer]
	str	w8, [x9, #72]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_softmax_layer, .Lfunc_end0-make_softmax_layer
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
	.asciz	"softmax                                        %4d\n"
	.size	.L.str, 52
	.type	SOFTMAX,@object                 // @SOFTMAX
	.bss
	.globl	SOFTMAX
	.p2align	2
SOFTMAX:
	.word	0                               // 0x0
	.size	SOFTMAX, 4
	.type	forward_softmax_layer,@object   // @forward_softmax_layer
	.globl	forward_softmax_layer
	.p2align	2
forward_softmax_layer:
	.word	0                               // 0x0
	.size	forward_softmax_layer, 4
	.type	backward_softmax_layer,@object  // @backward_softmax_layer
	.globl	backward_softmax_layer
	.p2align	2
backward_softmax_layer:
	.word	0                               // 0x0
	.size	backward_softmax_layer, 4
	.type	backward_softmax_layer_gpu,@object // @backward_softmax_layer_gpu
	.globl	backward_softmax_layer_gpu
	.p2align	2
backward_softmax_layer_gpu:
	.word	0                               // 0x0
	.size	backward_softmax_layer_gpu, 4
	.type	forward_softmax_layer_gpu,@object // @forward_softmax_layer_gpu
	.globl	forward_softmax_layer_gpu
	.p2align	2
forward_softmax_layer_gpu:
	.word	0                               // 0x0
	.size	forward_softmax_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym SOFTMAX
	.addrsig_sym forward_softmax_layer
	.addrsig_sym backward_softmax_layer