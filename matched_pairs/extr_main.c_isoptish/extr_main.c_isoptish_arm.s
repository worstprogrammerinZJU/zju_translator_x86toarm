	.text
	.p2align	2                               // -- Begin function isoptish
	.type	isoptish,@function
isoptish:                               // @isoptish
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #45
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldrb	w9, [x8, #1]
	mov	w8, #1
	subs	w9, w9, #45
	str	w8, [sp]                        // 4-byte Folded Spill
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldrb	w0, [x8, #1]
	bl	isalpha
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	isoptish, .Lfunc_end0-isoptish
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isoptish
	.addrsig_sym isalpha