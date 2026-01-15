	.text
	.p2align	2                               // -- Begin function iswhitespace
	.type	iswhitespace,@function
iswhitespace:                           // @iswhitespace
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #1
	subs	w9, w9, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w9, [sp, #12]
	mov	w8, #1
	subs	w9, w9, #9
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	w9, [sp, #12]
	mov	w8, #1
	subs	w9, w9, #12
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]
	subs	w8, w8, #11
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	iswhitespace, .Lfunc_end0-iswhitespace
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym iswhitespace