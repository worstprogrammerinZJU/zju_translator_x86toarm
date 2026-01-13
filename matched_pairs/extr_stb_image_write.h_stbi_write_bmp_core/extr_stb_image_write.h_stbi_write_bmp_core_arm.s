	.text
	.p2align	2                               // -- Begin function stbi_write_bmp_core
	.type	stbi_write_bmp_core,@function
stbi_write_bmp_core:                    // @stbi_write_bmp_core
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	x4, [x29, #-32]
	ldur	w8, [x29, #-12]
	mov	w9, #3
	mneg	w8, w8, w9
	and	w8, w8, #0x3
	stur	w8, [x29, #-36]
	ldur	x0, [x29, #-8]
	ldur	w3, [x29, #-12]
	ldur	w4, [x29, #-16]
	ldur	w5, [x29, #-20]
	ldur	x7, [x29, #-32]
	ldur	w13, [x29, #-36]
	ldur	w8, [x29, #-12]
	mul	w8, w8, w9
	ldur	w9, [x29, #-36]
	add	w8, w8, w9
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	mov	w11, #54
	add	w12, w8, #54
	ldur	w10, [x29, #-12]
	ldur	w9, [x29, #-16]
	mov	x8, sp
	str	wzr, [x8]
	str	w13, [x8, #8]
	adrp	x13, .L.str
	add	x13, x13, :lo12:.L.str
	str	x13, [x8, #16]
	mov	w13, #66
	strb	w13, [x8, #24]
	mov	w13, #77
	strb	w13, [x8, #32]
	str	w12, [x8, #40]
	str	wzr, [x8, #48]
	str	wzr, [x8, #56]
	str	w11, [x8, #64]
	mov	w11, #40
	str	w11, [x8, #72]
	str	w10, [x8, #80]
	str	w9, [x8, #88]
	mov	w6, #1
	str	w6, [x8, #96]
	mov	w9, #24
	str	w9, [x8, #104]
	str	wzr, [x8, #112]
	str	wzr, [x8, #120]
	str	wzr, [x8, #128]
	str	wzr, [x8, #136]
	str	wzr, [x8, #144]
	str	wzr, [x8, #152]
	mov	w2, #-1
	mov	w1, w2
	bl	stbiw__outfile
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	stbi_write_bmp_core, .Lfunc_end0-stbi_write_bmp_core
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"11 4 22 44 44 22 444444"
	.size	.L.str, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi_write_bmp_core
	.addrsig_sym stbiw__outfile