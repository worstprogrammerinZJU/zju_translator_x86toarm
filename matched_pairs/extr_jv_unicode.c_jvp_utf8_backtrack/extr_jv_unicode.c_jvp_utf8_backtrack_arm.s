	.text
	.globl	jvp_utf8_backtrack              // -- Begin function jvp_utf8_backtrack
	.p2align	2
	.type	jvp_utf8_backtrack,@function
jvp_utf8_backtrack:                     // @jvp_utf8_backtrack
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	cset	w8, ls
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_2:
	str	wzr, [sp, #12]
	mov	w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x9, [x29, #-16]
	ldr	x10, [sp, #24]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.lo	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	adrp	x8, utf8_coding_length
	ldr	x8, [x8, :lo12:utf8_coding_length]
	ldur	x9, [x29, #-16]
	ldrb	w9, [x9]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	adrp	x9, UTF8_CONTINUATION_BYTE
	ldr	w9, [x9, :lo12:UTF8_CONTINUATION_BYTE]
	subs	w8, w8, w9
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	subs	x8, x8, #1
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_7:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #12]
	adrp	x9, UTF8_CONTINUATION_BYTE
	ldr	w9, [x9, :lo12:UTF8_CONTINUATION_BYTE]
	subs	w8, w8, w9
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	subs	w8, w8, #0
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_14
.LBB0_11:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_utf8_backtrack, .Lfunc_end0-jvp_utf8_backtrack
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym utf8_coding_length
	.addrsig_sym UTF8_CONTINUATION_BYTE