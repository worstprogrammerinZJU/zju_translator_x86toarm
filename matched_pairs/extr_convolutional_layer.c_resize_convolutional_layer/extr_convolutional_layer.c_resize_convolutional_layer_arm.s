	.text
	.globl	resize_convolutional_layer      // -- Begin function resize_convolutional_layer
	.p2align	2
	.type	resize_convolutional_layer,@function
resize_convolutional_layer:             // @resize_convolutional_layer
// %bb.0:
	sub	sp, sp, #432
	stp	x29, x30, [sp, #400]            // 16-byte Folded Spill
	str	x28, [sp, #416]                 // 8-byte Folded Spill
	add	x29, sp, #400
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	ldur	x1, [x29, #-8]
	sub	x0, x29, #136
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	x2, #112
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	convolutional_out_width
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	stur	w0, [x29, #-20]
	ldur	x1, [x29, #-8]
	add	x0, sp, #144
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	convolutional_out_height
	stur	w0, [x29, #-140]
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-140]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #12]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #20]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #4]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #28]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #40]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #80]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #80]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #64]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #104]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #104]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #96]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #96]
	b	.LBB0_2
.LBB0_2:
	ldur	x1, [x29, #-8]
	add	x0, sp, #32
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	x2, #112
	bl	memcpy
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	get_workspace_size
	ldur	x8, [x29, #-8]
	str	w0, [x8, #36]
	ldr	x28, [sp, #416]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #400]            // 16-byte Folded Reload
	add	sp, sp, #432
	ret
.Lfunc_end0:
	.size	resize_convolutional_layer, .Lfunc_end0-resize_convolutional_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym convolutional_out_width
	.addrsig_sym convolutional_out_height
	.addrsig_sym realloc
	.addrsig_sym get_workspace_size