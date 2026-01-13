	.text
	.p2align	2                               // -- Begin function entry_index
	.type	entry_index,@function
entry_index:                            // @entry_index
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	str	w4, [sp, #20]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #32]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	sdiv	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #32]
	ldr	w10, [sp, #36]
	mul	w10, w9, w10
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #40]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #32]
	mul	w9, w9, w10
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	ldr	w10, [sp, #44]
	add	w10, w10, #4
	add	w10, w10, #1
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #32]
	mul	w9, w9, w10
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	entry_index, .Lfunc_end0-entry_index
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym entry_index