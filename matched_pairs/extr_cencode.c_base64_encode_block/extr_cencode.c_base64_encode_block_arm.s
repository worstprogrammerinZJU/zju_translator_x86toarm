	.text
	.globl	base64_encode_block             // -- Begin function base64_encode_block
	.p2align	2
	.type	base64_encode_block,@function
base64_encode_block:                    // @base64_encode_block
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9
	str	x8, [sp, #24]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]
	ldr	x8, [sp, #40]
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #4]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_10
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #129
	b.eq	.LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	subs	w8, w8, #130
	b.eq	.LBB0_4
	b	.LBB0_13
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #40]
	strb	w8, [x9]
	ldr	x9, [sp, #40]
	mov	w8, #130
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_6:
	ldr	x8, [sp, #32]
	add	x9, x8, #1
	str	x9, [sp, #32]
	ldrb	w8, [x8]
	strb	w8, [sp, #14]
	ldrb	w8, [sp, #14]
	and	w8, w8, #0xfc
	asr	w8, w8, #2
	strb	w8, [sp, #15]
	ldrb	w0, [sp, #15]
	bl	base64_encode_value
	mov	w8, w0
	ldr	x9, [sp, #16]
	add	x10, x9, #1
	str	x10, [sp, #16]
	strb	w8, [x9]
	ldrb	w8, [sp, #14]
	and	w8, w8, #0x3
	lsl	w8, w8, #4
	strb	w8, [sp, #15]
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #40]
	strb	w8, [x9]
	ldr	x9, [sp, #40]
	mov	w8, #129
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_9:
	ldr	x8, [sp, #32]
	add	x9, x8, #1
	str	x9, [sp, #32]
	ldrb	w8, [x8]
	strb	w8, [sp, #14]
	ldrb	w8, [sp, #14]
	and	w9, w8, #0xf0
	ldrb	w8, [sp, #15]
	orr	w8, w8, w9, asr #4
	strb	w8, [sp, #15]
	ldrb	w0, [sp, #15]
	bl	base64_encode_value
	mov	w8, w0
	ldr	x9, [sp, #16]
	add	x10, x9, #1
	str	x10, [sp, #16]
	strb	w8, [x9]
	ldrb	w8, [sp, #14]
	and	w8, w8, #0xf
	lsl	w8, w8, #2
	strb	w8, [sp, #15]
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldrb	w8, [sp, #15]
	ldr	x9, [sp, #40]
	strb	w8, [x9]
	ldr	x9, [sp, #40]
	mov	w8, #128
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_12:
	ldr	x8, [sp, #32]
	add	x9, x8, #1
	str	x9, [sp, #32]
	ldrb	w8, [x8]
	strb	w8, [sp, #14]
	ldrb	w8, [sp, #14]
	and	w9, w8, #0xc0
	ldrb	w8, [sp, #15]
	orr	w8, w8, w9, asr #6
	strb	w8, [sp, #15]
	ldrb	w0, [sp, #15]
	bl	base64_encode_value
	mov	w8, w0
	ldr	x9, [sp, #16]
	add	x10, x9, #1
	str	x10, [sp, #16]
	strb	w8, [x9]
	ldrb	w8, [sp, #14]
	and	w8, w8, #0x3f
	asr	w8, w8, #0
	strb	w8, [sp, #15]
	ldrb	w0, [sp, #15]
	bl	base64_encode_value
	mov	w8, w0
	ldr	x9, [sp, #16]
	add	x10, x9, #1
	str	x10, [sp, #16]
	strb	w8, [x9]
	b	.LBB0_3
.LBB0_13:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	base64_encode_block, .Lfunc_end0-base64_encode_block
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_encode_value