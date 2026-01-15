	.text
	.p2align	2                               // -- Begin function stbi__hdr_to_ldr
	.type	stbi__hdr_to_ldr,@function
stbi__hdr_to_ldr:                       // @stbi__hdr_to_ldr
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	w3, [x29, #-28]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_26
.LBB0_2:
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-24]
	ldur	w2, [x29, #-28]
	mov	w3, wzr
	bl	stbi__malloc_mad3
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	STBI_FREE
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_26
.LBB0_4:
	ldur	w8, [x29, #-28]
	tbz	w8, #0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-28]
	str	w8, [sp, #24]
	b	.LBB0_7
.LBB0_6:
	ldur	w8, [x29, #-28]
	subs	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_7
.LBB0_7:
	str	wzr, [sp, #32]
	b	.LBB0_8
.LBB0_8:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_10 Depth 2
	ldr	w8, [sp, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_25
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	str	wzr, [sp, #28]
	b	.LBB0_10
.LBB0_10:                               //   Parent Loop BB0_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=2
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #32]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [sp, #28]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	adrp	x8, stbi__h2l_scale_i
	ldr	s1, [x8, :lo12:stbi__h2l_scale_i]
	fmul	s0, s0, s1
	adrp	x8, stbi__h2l_gamma_i
	ldr	w0, [x8, :lo12:stbi__h2l_gamma_i]
	bl	pow
	scvtf	s0, x0
	fmov	s2, #0.50000000
	mov	w8, #1132396544
	fmov	s1, w8
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fcmp	s0, #0.0
	b.pl	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=2
	movi	d0, #0000000000000000
	str	s0, [sp, #12]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	s0, [sp, #12]
	mov	w8, #1132396544
	fmov	s1, w8
	fcmp	s0, s1
	b.le	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=2
	mov	w8, #1132396544
	fmov	s0, w8
	str	s0, [sp, #12]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	s0, [sp, #12]
	bl	stbi__float2int
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #32]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [sp, #28]
	add	w9, w9, w10
	str	x0, [x8, w9, sxtw #3]
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_10
.LBB0_17:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_23
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #32]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [sp, #28]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	fmov	s2, #0.50000000
	mov	w8, #1132396544
	fmov	s1, w8
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fcmp	s0, #0.0
	b.pl	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_8 Depth=1
	movi	d0, #0000000000000000
	str	s0, [sp, #8]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	s0, [sp, #8]
	mov	w8, #1132396544
	fmov	s1, w8
	fcmp	s0, s1
	b.le	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_8 Depth=1
	mov	w8, #1132396544
	fmov	s0, w8
	str	s0, [sp, #8]
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	s0, [sp, #8]
	bl	stbi__float2int
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #32]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [sp, #28]
	add	w9, w9, w10
	str	x0, [x8, w9, sxtw #3]
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_8
.LBB0_25:
	ldur	x0, [x29, #-16]
	bl	STBI_FREE
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__hdr_to_ldr, .Lfunc_end0-stbi__hdr_to_ldr
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"outofmem"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Out of memory"
	.size	.L.str.1, 14
	.type	stbi__h2l_scale_i,@object       // @stbi__h2l_scale_i
	.bss
	.globl	stbi__h2l_scale_i
	.p2align	2
stbi__h2l_scale_i:
	.word	0x00000000                      // float 0
	.size	stbi__h2l_scale_i, 4
	.type	stbi__h2l_gamma_i,@object       // @stbi__h2l_gamma_i
	.globl	stbi__h2l_gamma_i
	.p2align	2
stbi__h2l_gamma_i:
	.word	0                               // 0x0
	.size	stbi__h2l_gamma_i, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_to_ldr
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__errpuc
	.addrsig_sym pow
	.addrsig_sym stbi__float2int
	.addrsig_sym stbi__h2l_scale_i
	.addrsig_sym stbi__h2l_gamma_i