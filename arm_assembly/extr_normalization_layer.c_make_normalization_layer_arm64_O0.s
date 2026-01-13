	.text
	.globl	make_normalization_layer        // -- Begin function make_normalization_layer
	.p2align	2
	.type	make_normalization_layer,@function
make_normalization_layer:               // @make_normalization_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	str	s0, [sp, #24]
	str	s1, [sp, #20]
	str	s2, [sp, #16]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	ldur	w4, [x29, #-16]
	ldur	w5, [x29, #-20]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #144
	bl	memset
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, NORMALIZATION
	ldr	w8, [x8, :lo12:NORMALIZATION]
	str	w8, [x9, #136]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldur	w8, [x29, #-12]
	str	w8, [x9, #8]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-8]
	str	w8, [x9, #16]
	str	w8, [x9, #12]
	ldur	w8, [x29, #-16]
	str	w8, [x9, #24]
	str	w8, [x9, #20]
	ldr	w8, [sp, #16]
	str	w8, [x9, #28]
	ldur	w8, [x29, #-20]
	str	w8, [x9, #32]
	ldr	w8, [sp, #24]
	str	w8, [x9, #36]
	ldr	w8, [sp, #20]
	str	w8, [x9, #40]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #104]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #88]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #72]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #56]
	ldur	w8, [x29, #-8]
	ldur	w10, [x29, #-12]
	mul	w8, w8, w10
	ldur	w10, [x29, #-16]
	mul	w8, w8, w10
	str	w8, [x9, #44]
	ldr	w8, [x9, #44]
	str	w8, [x9, #48]
	adrp	x8, forward_normalization_layer
	ldr	w8, [x8, :lo12:forward_normalization_layer]
	str	w8, [x9, #132]
	adrp	x8, backward_normalization_layer
	ldr	w8, [x8, :lo12:backward_normalization_layer]
	str	w8, [x9, #128]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_normalization_layer, .Lfunc_end0-make_normalization_layer
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
	.asciz	"Local Response Normalization Layer: %d x %d x %d image, %d size\n"
	.size	.L.str, 65
	.type	NORMALIZATION,@object           // @NORMALIZATION
	.bss
	.globl	NORMALIZATION
	.p2align	2
NORMALIZATION:
	.word	0                               // 0x0
	.size	NORMALIZATION, 4
	.type	forward_normalization_layer,@object // @forward_normalization_layer
	.globl	forward_normalization_layer
	.p2align	2
forward_normalization_layer:
	.word	0                               // 0x0
	.size	forward_normalization_layer, 4
	.type	backward_normalization_layer,@object // @backward_normalization_layer
	.globl	backward_normalization_layer
	.p2align	2
backward_normalization_layer:
	.word	0                               // 0x0
	.size	backward_normalization_layer, 4
	.type	backward_normalization_layer_gpu,@object // @backward_normalization_layer_gpu
	.globl	backward_normalization_layer_gpu
	.p2align	2
backward_normalization_layer_gpu:
	.word	0                               // 0x0
	.size	backward_normalization_layer_gpu, 4
	.type	forward_normalization_layer_gpu,@object // @forward_normalization_layer_gpu
	.globl	forward_normalization_layer_gpu
	.p2align	2
forward_normalization_layer_gpu:
	.word	0                               // 0x0
	.size	forward_normalization_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym NORMALIZATION
	.addrsig_sym forward_normalization_layer
	.addrsig_sym backward_normalization_layer