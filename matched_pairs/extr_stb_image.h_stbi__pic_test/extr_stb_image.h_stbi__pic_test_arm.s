	.text
	.p2align	2                               // -- Begin function stbi__pic_test
	.type	stbi__pic_test,@function
stbi__pic_test:                         // @stbi__pic_test
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	stbi__pic_test_core
	str	w0, [sp, #4]
	ldr	x0, [sp, #8]
	bl	stbi__rewind
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__pic_test, .Lfunc_end0-stbi__pic_test
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_test
	.addrsig_sym stbi__pic_test_core
	.addrsig_sym stbi__rewind