	.text
	.p2align	2                               // -- Begin function base64_decode_chars_signed
	.type	base64_decode_chars_signed,@function
base64_decode_chars_signed:             // @base64_decode_chars_signed
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	add	x0, sp, #20
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	base64_init_decodestate
	ldr	x3, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #24]
	bl	base64_decode_block_signed
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #16]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	base64_decode_chars_signed, .Lfunc_end0-base64_decode_chars_signed
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_chars_signed
	.addrsig_sym base64_init_decodestate
	.addrsig_sym base64_decode_block_signed