	.text
	.globl	jvp_utf8_encode                 // -- Begin function jvp_utf8_encode
	.p2align	2
	.type	jvp_utf8_encode,@function
jvp_utf8_encode:                        // @jvp_utf8_encode
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	ldur	w8, [x29, #-4]
	mov	w9, #0
	str	w9, [sp, #20]                   // 4-byte Folded Spill
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #272, lsl #12           // =1114112
	cset	w8, lt
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #127
	b.gt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-4]
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	b	.LBB0_11
.LBB0_4:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #2047
	b.gt	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x7c0
	asr	w8, w8, #6
	add	w8, w8, #192
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x3f
	add	w8, w8, #128
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	b	.LBB0_10
.LBB0_6:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #16, lsl #12            // =65536
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-4]
	and	w8, w8, #0xf000
	asr	w8, w8, #12
	add	w8, w8, #224
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0xfc0
	asr	w8, w8, #6
	add	w8, w8, #128
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x3f
	add	w8, w8, #128
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	b	.LBB0_9
.LBB0_8:
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x1c0000
	asr	w8, w8, #18
	add	w8, w8, #240
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x3f000
	asr	w8, w8, #12
	add	w8, w8, #128
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0xfc0
	asr	w8, w8, #6
	add	w8, w8, #128
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	ldur	w8, [x29, #-4]
	and	w8, w8, #0x3f
	add	w8, w8, #128
	ldur	x9, [x29, #-16]
	add	x10, x9, #1
	stur	x10, [x29, #-16]
	strb	w8, [x9]
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jvp_utf8_encode_length
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	subs	x8, x8, w0, sxtw
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	mov	w0, w8
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_utf8_encode, .Lfunc_end0-jvp_utf8_encode
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jvp_utf8_encode_length