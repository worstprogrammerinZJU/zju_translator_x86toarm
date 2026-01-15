	.text
	.globl	entry_index                     // -- Begin function entry_index
	.p2align	2
	.type	entry_index,@function
entry_index:                            // @entry_index
// %bb.0:
	sub	sp, sp, #32
	str	w1, [sp, #28]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	ldr	w8, [sp, #24]
	ldr	w9, [x0]
	ldr	w10, [x0, #4]
	mul	w9, w9, w10
	sdiv	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #24]
	ldr	w9, [x0]
	ldr	w10, [x0, #4]
	mul	w10, w9, w10
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [x0, #8]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	ldr	w10, [x0]
	mul	w9, w9, w10
	ldr	w10, [x0, #4]
	mul	w9, w9, w10
	ldr	w10, [x0, #12]
	ldr	w11, [x0, #16]
	add	w10, w10, w11
	add	w10, w10, #1
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	ldr	w10, [x0]
	mul	w9, w9, w10
	ldr	w10, [x0, #4]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	entry_index, .Lfunc_end0-entry_index
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig