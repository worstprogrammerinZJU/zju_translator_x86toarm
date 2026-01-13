	.text
	.globl	jvp_utf8_decode_length          // -- Begin function jvp_utf8_decode_length
	.p2align	2
	.type	jvp_utf8_decode_length,@function
jvp_utf8_decode_length:                 // @jvp_utf8_decode_length
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #11]
	ldrb	w8, [sp, #11]
	tbnz	w8, #7, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_2:
	ldrb	w8, [sp, #11]
	and	w8, w8, #0xe0
	subs	w8, w8, #192
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #2
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_4:
	ldrb	w8, [sp, #11]
	and	w8, w8, #0xf0
	subs	w8, w8, #224
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #3
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_6:
	mov	w8, #4
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jvp_utf8_decode_length, .Lfunc_end0-jvp_utf8_decode_length
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig