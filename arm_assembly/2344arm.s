	.text
	.p2align	2                               // -- Begin function bitfield_union
	.type	bitfield_union,@function
bitfield_union:                         // @bitfield_union
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	ldurh	w8, [x29, #-4]
	and	w8, w8, #0xfffffc00
	mov	w0, #2
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	orr	w8, w8, w0
	sturh	w8, [x29, #-4]
	ldurh	w8, [x29, #-4]
	lsl	w8, w8, #6
	sxth	w8, w8
	asr	w8, w8, #6
	sxth	w1, w8
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldurb	w8, [x29, #-4]
	mov	w9, #31
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	and	w8, w8, #0x1f
	and	w1, w8, #0xff
	bl	expect
	ldr	w9, [sp, #4]                    // 4-byte Folded Reload
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldurb	w8, [x29, #-4]
	and	w8, w8, w9
	and	w1, w8, #0xff
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	bitfield_union, .Lfunc_end0-bitfield_union
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_union
	.addrsig_sym expect