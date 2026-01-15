	.text
	.globl	base64_encode_chars             // -- Begin function base64_encode_chars
	.p2align	2
	.type	base64_encode_chars,@function
base64_encode_chars:                    // @base64_encode_chars
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	add	x0, sp, #20
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	base64_init_encodestate
	ldr	x3, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #24]
	bl	base64_encode_block
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	add	x0, x8, x9
	bl	base64_encode_blockend
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	add	w0, w8, w0
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	base64_encode_chars, .Lfunc_end0-base64_encode_chars
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_init_encodestate
	.addrsig_sym base64_encode_block
	.addrsig_sym base64_encode_blockend