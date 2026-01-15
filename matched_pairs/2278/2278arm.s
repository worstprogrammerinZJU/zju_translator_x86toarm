	.text
	.p2align	2                               // -- Begin function stbi__psd_test
	.type	stbi__psd_test,@function
stbi__psd_test:                         // @stbi__psd_test
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	stbi__get32be
	mov	w8, #20563
	movk	w8, #14402, lsl #16
	subs	w8, w0, w8
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #4]
	ldr	x0, [sp, #8]
	bl	stbi__rewind
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__psd_test, .Lfunc_end0-stbi__psd_test
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__psd_test
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__rewind