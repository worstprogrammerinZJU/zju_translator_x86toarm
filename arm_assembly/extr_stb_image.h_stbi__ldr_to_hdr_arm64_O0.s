	.text
	.p2align	2                               // -- Begin function stbi__ldr_to_hdr
	.type	stbi__ldr_to_hdr,@function
stbi__ldr_to_hdr:                       // @stbi__ldr_to_hdr
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_18
.LBB0_2:
	ldur	w0, [x29, #-20]
	ldr	w1, [sp, #24]
	ldr	w2, [sp, #20]
	mov	w3, #4
	mov	w4, wzr
	bl	stbi__malloc_mad4
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	STBI_FREE
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpf
	stur	x0, [x29, #-8]
	b	.LBB0_18
.LBB0_4:
	ldr	w8, [sp, #20]
	tbz	w8, #0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #20]
	str	w8, [sp, #8]
	b	.LBB0_7
.LBB0_6:
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_7
.LBB0_7:
	str	wzr, [sp, #16]
	b	.LBB0_8
.LBB0_8:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_10 Depth 2
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-20]
	ldr	w10, [sp, #24]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_10
.LBB0_10:                               //   Parent Loop BB0_8 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=2
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	mov	w8, #1132396544
	fmov	s1, w8
	fdiv	s0, s0, s1
	adrp	x8, stbi__l2h_gamma
	ldr	w0, [x8, :lo12:stbi__l2h_gamma]
	bl	pow
	adrp	x8, stbi__l2h_scale
	ldr	w8, [x8, :lo12:stbi__l2h_scale]
	mul	w8, w0, w8
	scvtf	s0, w8
	ldr	x8, [sp]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_10
.LBB0_13:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	mov	w8, #1132396544
	fmov	s1, w8
	fdiv	s0, s0, s1
	ldr	x8, [sp]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	STBI_FREE
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__ldr_to_hdr, .Lfunc_end0-stbi__ldr_to_hdr
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
	.type	stbi__l2h_gamma,@object         // @stbi__l2h_gamma
	.bss
	.globl	stbi__l2h_gamma
	.p2align	2
stbi__l2h_gamma:
	.word	0                               // 0x0
	.size	stbi__l2h_gamma, 4
	.type	stbi__l2h_scale,@object         // @stbi__l2h_scale
	.globl	stbi__l2h_scale
	.p2align	2
stbi__l2h_scale:
	.word	0                               // 0x0
	.size	stbi__l2h_scale, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__ldr_to_hdr
	.addrsig_sym stbi__malloc_mad4
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__errpf
	.addrsig_sym pow
	.addrsig_sym stbi__l2h_gamma
	.addrsig_sym stbi__l2h_scale