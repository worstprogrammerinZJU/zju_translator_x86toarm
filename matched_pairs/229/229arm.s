	.text
	.globl	base64_encode_blockend          // -- Begin function base64_encode_blockend
	.p2align	2
	.type	base64_encode_blockend,@function
base64_encode_blockend:                 // @base64_encode_blockend
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #130
	b.eq	.LBB0_5
	b	.LBB0_6
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	base64_encode_value
	mov	w8, w0
	ldr	x9, [sp, #8]
	add	x10, x9, #1
	str	x10, [sp, #8]
	strb	w8, [x9]
	ldr	x9, [sp, #8]
	add	x8, x9, #1
	str	x8, [sp, #8]
	mov	w8, #61
	strb	w8, [x9]
	ldr	x9, [sp, #8]
	add	x10, x9, #1
	str	x10, [sp, #8]
	strb	w8, [x9]
	b	.LBB0_6
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	base64_encode_value
	mov	w8, w0
	ldr	x9, [sp, #8]
	add	x10, x9, #1
	str	x10, [sp, #8]
	strb	w8, [x9]
	ldr	x9, [sp, #8]
	add	x8, x9, #1
	str	x8, [sp, #8]
	mov	w8, #61
	strb	w8, [x9]
	b	.LBB0_6
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #8]
	strb	wzr, [x8]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	w0, w8
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	base64_encode_blockend, .Lfunc_end0-base64_encode_blockend
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_encode_value