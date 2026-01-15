	.text
	.globl	resize_shortcut_layer           // -- Begin function resize_shortcut_layer
	.p2align	2
	.type	resize_shortcut_layer,@function
resize_shortcut_layer:                  // @resize_shortcut_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #20]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	ldr	x9, [sp, #8]
	str	w8, [x9, #24]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #28]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #32]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #48]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #28]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #48]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	resize_shortcut_layer, .Lfunc_end0-resize_shortcut_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym realloc