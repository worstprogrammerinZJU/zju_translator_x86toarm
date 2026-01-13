	.text
	.p2align	2                               // -- Begin function stbi__clamp
	.type	stbi__clamp,@function
stbi__clamp:                            // @stbi__clamp
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #255
	b.ls	.LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #12]
	b	.LBB0_7
.LBB0_3:
	ldr	w8, [sp, #8]
	subs	w8, w8, #255
	b.le	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #255
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__clamp, .Lfunc_end0-stbi__clamp
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__clamp