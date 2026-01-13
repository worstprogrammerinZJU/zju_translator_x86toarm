	.text
	.globl	base64_decode_block             // -- Begin function base64_decode_block
	.p2align	2
	.type	base64_decode_block,@function
base64_decode_block:                    // @base64_decode_block
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	bl	base64_decode_block_signed
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	base64_decode_block, .Lfunc_end0-base64_decode_block
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_block_signed