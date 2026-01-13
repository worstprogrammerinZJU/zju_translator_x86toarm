	.text
	.globl	make_crop_layer                 // -- Begin function make_crop_layer
	.p2align	2
	.type	make_crop_layer,@function
make_crop_layer:                        // @make_crop_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	str	w5, [sp, #24]
	str	w6, [sp, #20]
	str	s0, [sp, #16]
	str	s1, [sp, #12]
	str	s2, [sp, #8]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-8]
	ldur	w3, [x29, #-12]
	ldur	w4, [x29, #-20]
	ldr	w5, [sp, #24]
	ldur	w6, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	x0, [sp]                        // 8-byte Folded Reload
	mov	w1, wzr
	mov	x2, #104
	bl	memset
	ldr	x8, [sp]                        // 8-byte Folded Reload
	adrp	x9, CROP
	ldr	w9, [x9, :lo12:CROP]
	str	w9, [x8, #96]
	ldur	w9, [x29, #-4]
	str	w9, [x8]
	ldur	w9, [x29, #-8]
	str	w9, [x8, #4]
	ldur	w9, [x29, #-12]
	str	w9, [x8, #8]
	ldur	w9, [x29, #-16]
	str	w9, [x8, #12]
	ldur	s0, [x29, #-20]
	scvtf	s0, s0
	ldur	s1, [x29, #-8]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	str	s0, [x8, #16]
	ldr	w9, [sp, #20]
	str	w9, [x8, #20]
	ldr	w9, [sp, #16]
	str	w9, [x8, #24]
	ldr	w9, [sp, #12]
	str	w9, [x8, #28]
	ldr	w9, [sp, #8]
	str	w9, [x8, #32]
	ldr	w9, [sp, #24]
	str	w9, [x8, #36]
	ldur	w9, [x29, #-20]
	str	w9, [x8, #40]
	ldur	w9, [x29, #-16]
	str	w9, [x8, #44]
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w9, w9, w10
	str	w9, [x8, #48]
	ldr	w9, [x8, #36]
	ldr	w10, [x8, #40]
	mul	w9, w9, w10
	ldr	w10, [x8, #44]
	mul	w9, w9, w10
	str	w9, [x8, #52]
	ldr	w8, [x8, #52]
	ldur	w9, [x29, #-4]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	ldr	x9, [sp]                        // 8-byte Folded Reload
	str	w0, [x9, #64]
	adrp	x8, forward_crop_layer
	ldr	w8, [x8, :lo12:forward_crop_layer]
	str	w8, [x9, #92]
	adrp	x8, backward_crop_layer
	ldr	w8, [x8, :lo12:backward_crop_layer]
	str	w8, [x9, #88]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	make_crop_layer, .Lfunc_end0-make_crop_layer
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
	.asciz	"Crop Layer: %d x %d -> %d x %d x %d image\n"
	.size	.L.str, 43
	.type	CROP,@object                    // @CROP
	.bss
	.globl	CROP
	.p2align	2
CROP:
	.word	0                               // 0x0
	.size	CROP, 4
	.type	forward_crop_layer,@object      // @forward_crop_layer
	.globl	forward_crop_layer
	.p2align	2
forward_crop_layer:
	.word	0                               // 0x0
	.size	forward_crop_layer, 4
	.type	backward_crop_layer,@object     // @backward_crop_layer
	.globl	backward_crop_layer
	.p2align	2
backward_crop_layer:
	.word	0                               // 0x0
	.size	backward_crop_layer, 4
	.type	backward_crop_layer_gpu,@object // @backward_crop_layer_gpu
	.globl	backward_crop_layer_gpu
	.p2align	2
backward_crop_layer_gpu:
	.word	0                               // 0x0
	.size	backward_crop_layer_gpu, 4
	.type	forward_crop_layer_gpu,@object  // @forward_crop_layer_gpu
	.globl	forward_crop_layer_gpu
	.p2align	2
forward_crop_layer_gpu:
	.word	0                               // 0x0
	.size	forward_crop_layer_gpu, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym CROP
	.addrsig_sym forward_crop_layer
	.addrsig_sym backward_crop_layer