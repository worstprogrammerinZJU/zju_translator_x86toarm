	.text
	.globl	jvp_utf8_next                   // -- Begin function jvp_utf8_next
	.p2align	2
	.type	jvp_utf8_next,@function
jvp_utf8_next:                          // @jvp_utf8_next
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, ls
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_26
.LBB0_2:
	mov	w8, #-1
	str	w8, [sp, #28]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	strb	w8, [sp, #27]
	adrp	x8, utf8_coding_length
	ldr	x8, [x8, :lo12:utf8_coding_length]
	ldrb	w9, [sp, #27]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #20]
	ldrb	w8, [sp, #27]
	tbnz	w8, #7, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldrb	w8, [sp, #27]
	str	w8, [sp, #28]
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_25
.LBB0_4:
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #20]
	adrp	x9, UTF8_CONTINUATION_BYTE
	ldr	w9, [x9, :lo12:UTF8_CONTINUATION_BYTE]
	subs	w8, w8, w9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #1
	str	w8, [sp, #20]
	b	.LBB0_24
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ls	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #20]
	b	.LBB0_23
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	adrp	x9, utf8_coding_bits
	ldr	x9, [x9, :lo12:utf8_coding_bits]
	ldrb	w10, [sp, #27]
                                        // kill: def $x10 killed $w10
	ldr	w9, [x9, x10, lsl #2]
	and	w8, w8, w9
	str	w8, [sp, #28]
	mov	w8, #1
	str	w8, [sp, #16]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #16]
	ldrb	w8, [x8, x9]
	str	w8, [sp, #12]
	adrp	x8, utf8_coding_length
	ldr	x8, [x8, :lo12:utf8_coding_length]
	ldr	w9, [sp, #12]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	adrp	x9, UTF8_CONTINUATION_BYTE
	ldr	w9, [x9, :lo12:UTF8_CONTINUATION_BYTE]
	subs	w8, w8, w9
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	mov	w8, #-1
	str	w8, [sp, #28]
	ldr	w8, [sp, #16]
	str	w8, [sp, #20]
	b	.LBB0_15
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w9, [sp, #28]
	ldr	w8, [sp, #12]
	bfi	w8, w9, #6, #26
	str	w8, [sp, #28]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_10
.LBB0_15:
	ldr	w8, [sp, #28]
	adrp	x9, utf8_first_codepoint
	ldr	x9, [x9, :lo12:utf8_first_codepoint]
	ldrsw	x10, [sp, #20]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	.LBB0_17
.LBB0_17:
	ldr	w9, [sp, #28]
	mov	w8, #55296
	subs	w8, w8, w9
	b.gt	.LBB0_20
	b	.LBB0_18
.LBB0_18:
	ldr	w8, [sp, #28]
	subs	w8, w8, #14, lsl #12            // =57344
	b.ge	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	.LBB0_20
.LBB0_20:
	ldr	w8, [sp, #28]
	subs	w8, w8, #272, lsl #12           // =1114112
	b.lt	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	mov	w8, #-1
	str	w8, [sp, #28]
	b	.LBB0_22
.LBB0_22:
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_25
.LBB0_25:
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, gt
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	stur	x8, [x29, #-8]
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jvp_utf8_next, .Lfunc_end0-jvp_utf8_next
                                        // -- End function
	.type	utf8_coding_length,@object      // @utf8_coding_length
	.bss
	.globl	utf8_coding_length
	.p2align	3
utf8_coding_length:
	.xword	0
	.size	utf8_coding_length, 8
	.type	UTF8_CONTINUATION_BYTE,@object  // @UTF8_CONTINUATION_BYTE
	.globl	UTF8_CONTINUATION_BYTE
	.p2align	2
UTF8_CONTINUATION_BYTE:
	.word	0                               // 0x0
	.size	UTF8_CONTINUATION_BYTE, 4
	.type	utf8_coding_bits,@object        // @utf8_coding_bits
	.globl	utf8_coding_bits
	.p2align	3
utf8_coding_bits:
	.xword	0
	.size	utf8_coding_bits, 8
	.type	utf8_first_codepoint,@object    // @utf8_first_codepoint
	.globl	utf8_first_codepoint
	.p2align	3
utf8_first_codepoint:
	.xword	0
	.size	utf8_first_codepoint, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym utf8_coding_length
	.addrsig_sym UTF8_CONTINUATION_BYTE
	.addrsig_sym utf8_coding_bits
	.addrsig_sym utf8_first_codepoint