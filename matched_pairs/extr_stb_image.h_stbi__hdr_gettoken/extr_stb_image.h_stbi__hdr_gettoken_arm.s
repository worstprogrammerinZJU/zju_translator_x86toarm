	.text
	.p2align	2                               // -- Begin function stbi__hdr_gettoken
	.type	stbi__hdr_gettoken,@function
stbi__hdr_gettoken:                     // @stbi__hdr_gettoken
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	strb	wzr, [sp, #11]
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	strb	w0, [sp, #11]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	bl	stbi__at_eof
	mov	w8, #0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #11]
	subs	w8, w8, #10
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_12
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #11]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #12]
	add	x9, x9, x10
	strb	w8, [x9]
	ldr	w8, [sp, #12]
	adrp	x9, STBI__HDR_BUFLEN
	ldr	w9, [x9, :lo12:STBI__HDR_BUFLEN]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ne	.LBB0_11
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	bl	stbi__at_eof
	mov	w8, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #10
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_6
.LBB0_10:
	b	.LBB0_12
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	strb	w0, [sp, #11]
	b	.LBB0_1
.LBB0_12:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	strb	wzr, [x8]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__hdr_gettoken, .Lfunc_end0-stbi__hdr_gettoken
                                        // -- End function
	.type	STBI__HDR_BUFLEN,@object        // @STBI__HDR_BUFLEN
	.bss
	.globl	STBI__HDR_BUFLEN
	.p2align	2
STBI__HDR_BUFLEN:
	.word	0                               // 0x0
	.size	STBI__HDR_BUFLEN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_gettoken
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__at_eof
	.addrsig_sym STBI__HDR_BUFLEN