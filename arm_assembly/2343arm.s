	.text
	.p2align	2                               // -- Begin function bitfield_mix
	.type	bitfield_mix,@function
bitfield_mix:                           // @bitfield_mix
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	ldurh	w8, [x29, #-4]
	and	w8, w8, #0xffffffe0
	mov	w0, #10
	orr	w8, w8, w0
	sturh	w8, [x29, #-4]
	ldurh	w8, [x29, #-4]
	and	w8, w8, #0xfffffc1f
	mov	w9, #352
	orr	w8, w8, w9
	sturh	w8, [x29, #-4]
	ldurh	w8, [x29, #-4]
	and	w8, w8, #0x1f
	and	w1, w8, #0xff
	bl	expect
	ldurh	w8, [x29, #-4]
	lsl	w8, w8, #6
	sxth	w8, w8
	asr	w8, w8, #11
	sxth	w1, w8
	mov	w0, #11
	bl	expect
	ldur	w1, [x29, #-4]
	mov	w0, #362
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	bitfield_mix, .Lfunc_end0-bitfield_mix
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_mix
	.addrsig_sym expect