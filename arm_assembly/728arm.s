	.text
	.globl	make_detection_layer            // -- Begin function make_detection_layer
	.p2align	2
	.type	make_detection_layer,@function
make_detection_layer:                   // @make_detection_layer
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
	str	w6, [sp, #20]
	mov	w1, wzr
	str	w1, [sp, #16]                   // 4-byte Folded Spill
	mov	x2, #112
	bl	memset
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	adrp	x8, DETECTION
	ldr	w8, [x8, :lo12:DETECTION]
	str	w8, [x10, #104]
	ldur	w8, [x29, #-12]
	str	w8, [x10]
	ldur	w8, [x29, #-4]
	str	w8, [x10, #4]
	ldur	w8, [x29, #-8]
	str	w8, [x10, #8]
	ldur	w8, [x29, #-20]
	str	w8, [x10, #12]
	ldr	w8, [sp, #24]
	str	w8, [x10, #16]
	ldr	w8, [sp, #20]
	str	w8, [x10, #20]
	ldur	w8, [x29, #-16]
	str	w8, [x10, #24]
	ldur	w8, [x29, #-16]
	str	w8, [x10, #28]
	ldur	w8, [x29, #-16]
	str	w8, [x10, #32]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldr	w9, [x10, #16]
	mov	w11, #1
	str	w11, [sp]                       // 4-byte Folded Spill
	add	w9, w9, #1
	ldr	w11, [x10]
	mul	w9, w9, w11
	ldr	w10, [x10, #12]
	add	w9, w9, w10
	mul	w8, w8, w9
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	w0, [sp]                        // 4-byte Folded Reload
	mov	w1, #4
	str	w1, [sp, #4]                    // 4-byte Folded Spill
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #96]
	ldr	w8, [x9, #8]
	str	w8, [x9, #36]
	ldr	w8, [x9, #24]
	ldr	w10, [x9, #24]
	mul	w8, w8, w10
	ldr	w10, [x9, #16]
	add	w10, w10, #1
	ldr	w11, [x9, #12]
	add	w10, w10, w11
	mul	w8, w8, w10
	str	w8, [x9, #40]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #36]
	mul	w0, w8, w9
	bl	calloc
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #64]
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #36]
	mul	w0, w8, w9
	bl	calloc
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x9, #48]
	adrp	x8, forward_detection_layer
	ldr	w8, [x8, :lo12:forward_detection_layer]
	str	w8, [x9, #92]
	adrp	x8, backward_detection_layer
	ldr	w8, [x8, :lo12:backward_detection_layer]
	str	w8, [x9, #88]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	bl	srand
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_detection_layer, .Lfunc_end0-make_detection_layer
                                        // -- End function
	.type	DETECTION,@object               // @DETECTION
	.bss
	.globl	DETECTION
	.p2align	2
DETECTION:
	.word	0                               // 0x0
	.size	DETECTION, 4
	.type	forward_detection_layer,@object // @forward_detection_layer
	.globl	forward_detection_layer
	.p2align	2
forward_detection_layer:
	.word	0                               // 0x0
	.size	forward_detection_layer, 4
	.type	backward_detection_layer,@object // @backward_detection_layer
	.globl	backward_detection_layer
	.p2align	2
backward_detection_layer:
	.word	0                               // 0x0
	.size	backward_detection_layer, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Detection Layer\n"
	.size	.L.str, 17
	.type	backward_detection_layer_gpu,@object // @backward_detection_layer_gpu
	.bss
	.globl	backward_detection_layer_gpu
	.p2align	2
backward_detection_layer_gpu:
	.word	0                               // 0x0
	.size	backward_detection_layer_gpu, 4
	.type	forward_detection_layer_gpu,@object // @forward_detection_layer_gpu
	.globl	forward_detection_layer_gpu
	.p2align	2
forward_detection_layer_gpu:
	.word	0                               // 0x0
	.size	forward_detection_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym srand
	.addrsig_sym DETECTION
	.addrsig_sym forward_detection_layer
	.addrsig_sym backward_detection_layer
	.addrsig_sym stderr