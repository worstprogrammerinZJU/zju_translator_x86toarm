	.text
	.p2align	2                               // -- Begin function stbiw__jpg_calcBits
	.type	stbiw__jpg_calcBits,@function
stbiw__jpg_calcBits:                    // @stbiw__jpg_calcBits
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	str	x1, [sp, #16]
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w9, [sp, #28]
	mov	w8, wzr
	subs	w8, w8, w9
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #28]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #28]
	subs	w8, w8, #1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_5:
	ldr	w8, [sp, #28]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #28]
	ldr	x9, [sp, #16]
	mov	w8, #1
	strh	w8, [x9, #2]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	asr	w8, w8, #1
	str	w8, [sp, #12]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x9, [sp, #16]
	ldrh	w8, [x9, #2]
	add	w8, w8, #1
	strh	w8, [x9, #2]
	b	.LBB0_7
.LBB0_9:
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #16]
	ldrh	w10, [x9, #2]
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w9, w9, #1
	and	w8, w8, w9
	ldr	x9, [sp, #16]
	strh	w8, [x9]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbiw__jpg_calcBits, .Lfunc_end0-stbiw__jpg_calcBits
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_calcBits