	.text
	.globl	jvp_utf8_encode_length          // -- Begin function jvp_utf8_encode_length
	.p2align	2
	.type	jvp_utf8_encode_length,@function
jvp_utf8_encode_length:                 // @jvp_utf8_encode_length
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #127
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_2:
	ldr	w8, [sp, #8]
	subs	w8, w8, #2047
	b.gt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #2
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #16, lsl #12            // =65536
	b.ge	.LBB0_6
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
	.size	jvp_utf8_encode_length, .Lfunc_end0-jvp_utf8_encode_length
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig