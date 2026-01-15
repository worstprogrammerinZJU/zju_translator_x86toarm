	.text
	.p2align	2                               // -- Begin function stbiw__jpg_DCT
	.type	stbiw__jpg_DCT,@function
stbiw__jpg_DCT:                         // @stbiw__jpg_DCT
// %bb.0:
	sub	sp, sp, #176
	add	x9, sp, #136
	str	x0, [x9, #32]
	str	x1, [x9, #24]
	str	x2, [x9, #16]
	str	x3, [x9, #8]
	str	x4, [x9]
	str	x5, [sp, #128]
	str	x6, [sp, #120]
	str	x7, [sp, #112]
	ldr	x8, [x9, #32]
	ldr	w8, [x8]
	str	w8, [sp, #108]
	ldr	x8, [x9, #24]
	ldr	w8, [x8]
	str	w8, [sp, #104]
	ldr	x8, [x9, #16]
	ldr	w8, [x8]
	str	w8, [sp, #100]
	ldr	x8, [x9, #8]
	ldr	w8, [x8]
	str	w8, [sp, #96]
	ldr	x8, [x9]
	ldr	w8, [x8]
	str	w8, [sp, #92]
	ldr	x8, [sp, #128]
	ldr	w8, [x8]
	str	w8, [sp, #88]
	ldr	x8, [sp, #120]
	ldr	w8, [x8]
	str	w8, [sp, #84]
	ldr	x8, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #80]
	ldr	s0, [sp, #108]
	ldr	s1, [sp, #80]
	fadd	s0, s0, s1
	str	s0, [sp, #48]
	ldr	s0, [sp, #108]
	ldr	s1, [sp, #80]
	fsub	s0, s0, s1
	str	s0, [sp, #44]
	ldr	s0, [sp, #104]
	ldr	s1, [sp, #84]
	fadd	s0, s0, s1
	str	s0, [sp, #40]
	ldr	s0, [sp, #104]
	ldr	s1, [sp, #84]
	fsub	s0, s0, s1
	str	s0, [sp, #36]
	ldr	s0, [sp, #100]
	ldr	s1, [sp, #88]
	fadd	s0, s0, s1
	str	s0, [sp, #32]
	ldr	s0, [sp, #100]
	ldr	s1, [sp, #88]
	fsub	s0, s0, s1
	str	s0, [sp, #28]
	ldr	s0, [sp, #96]
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	str	s0, [sp, #24]
	ldr	s0, [sp, #96]
	ldr	s1, [sp, #92]
	fsub	s0, s0, s1
	str	s0, [sp, #20]
	ldr	s0, [sp, #48]
	ldr	s1, [sp, #24]
	fadd	s0, s0, s1
	str	s0, [sp, #16]
	ldr	s0, [sp, #48]
	ldr	s1, [sp, #24]
	fsub	s0, s0, s1
	str	s0, [sp, #12]
	ldr	s0, [sp, #40]
	ldr	s1, [sp, #32]
	fadd	s0, s0, s1
	str	s0, [sp, #8]
	ldr	s0, [sp, #40]
	ldr	s1, [sp, #32]
	fsub	s0, s0, s1
	str	s0, [sp, #4]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #8]
	fadd	s0, s0, s1
	str	s0, [sp, #108]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #8]
	fsub	s0, s0, s1
	str	s0, [sp, #92]
	ldr	s0, [sp, #4]
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	mov	w8, #1267
	movk	w8, #16181, lsl #16
	fmov	s1, w8
	fmul	s0, s0, s1
	str	s0, [sp, #76]
	ldr	s0, [sp, #12]
	ldr	s2, [sp, #76]
	fadd	s0, s0, s2
	str	s0, [sp, #100]
	ldr	s0, [sp, #12]
	ldr	s2, [sp, #76]
	fsub	s0, s0, s2
	str	s0, [sp, #84]
	ldr	s0, [sp, #20]
	ldr	s2, [sp, #28]
	fadd	s0, s0, s2
	str	s0, [sp, #16]
	ldr	s0, [sp, #28]
	ldr	s2, [sp, #36]
	fadd	s0, s0, s2
	str	s0, [sp, #8]
	ldr	s0, [sp, #36]
	ldr	s2, [sp, #44]
	fadd	s0, s0, s2
	str	s0, [sp, #4]
	ldr	s0, [sp, #16]
	ldr	s2, [sp, #4]
	fsub	s0, s0, s2
	mov	w8, #61205
	movk	w8, #16067, lsl #16
	fmov	s2, w8
	fmul	s0, s0, s2
	str	s0, [sp, #60]
	ldr	s0, [sp, #16]
	ldr	s3, [sp, #60]
	mov	w8, #35796
	movk	w8, #16138, lsl #16
	fmov	s2, w8
	fmadd	s0, s0, s2, s3
	str	s0, [sp, #72]
	ldr	s0, [sp, #4]
	ldr	s3, [sp, #60]
	mov	w8, #15733
	movk	w8, #16295, lsl #16
	fmov	s2, w8
	fmadd	s0, s0, s2, s3
	str	s0, [sp, #64]
	ldr	s0, [sp, #8]
	fmul	s0, s0, s1
	str	s0, [sp, #68]
	ldr	s0, [sp, #44]
	ldr	s1, [sp, #68]
	fadd	s0, s0, s1
	str	s0, [sp, #56]
	ldr	s0, [sp, #44]
	ldr	s1, [sp, #68]
	fsub	s0, s0, s1
	str	s0, [sp, #52]
	ldr	s0, [sp, #52]
	ldr	s1, [sp, #72]
	fadd	s0, s0, s1
	ldr	x8, [sp, #128]
	str	s0, [x8]
	ldr	s0, [sp, #52]
	ldr	s1, [sp, #72]
	fsub	s0, s0, s1
	ldr	x8, [x9, #8]
	str	s0, [x8]
	ldr	s0, [sp, #56]
	ldr	s1, [sp, #64]
	fadd	s0, s0, s1
	ldr	x8, [x9, #24]
	str	s0, [x8]
	ldr	s0, [sp, #56]
	ldr	s1, [sp, #64]
	fsub	s0, s0, s1
	ldr	x8, [sp, #112]
	str	s0, [x8]
	ldr	w8, [sp, #108]
	ldr	x10, [x9, #32]
	str	w8, [x10]
	ldr	w8, [sp, #100]
	ldr	x10, [x9, #16]
	str	w8, [x10]
	ldr	w8, [sp, #92]
	ldr	x9, [x9]
	str	w8, [x9]
	ldr	w8, [sp, #84]
	ldr	x9, [sp, #120]
	str	w8, [x9]
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	stbiw__jpg_DCT, .Lfunc_end0-stbiw__jpg_DCT
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_DCT