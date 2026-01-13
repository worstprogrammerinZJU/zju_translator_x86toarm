	.text
	.p2align	2                               // -- Begin function bitfield_unnamed
	.type	bitfield_unnamed,@function
bitfield_unnamed:                       // @bitfield_unnamed
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	wzr, [x29, #-4]
	stur	wzr, [x29, #-4]
	ldurh	w8, [x29, #-4]
	mov	w9, #-16
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	and	w8, w8, #0xfffffff0
	mov	w0, #2
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	orr	w8, w8, w0
	sturh	w8, [x29, #-4]
	ldurh	w8, [x29, #-4]
	and	w8, w8, #0xffffff0f
	orr	w8, w8, #0x40
	sturh	w8, [x29, #-4]
	ldurh	w8, [x29, #-4]
	mov	w9, #15
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	and	w8, w8, #0xf
	and	w1, w8, #0xff
	bl	expect
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	ldurh	w9, [x29, #-4]
	and	w8, w8, w9, lsr #4
	and	w1, w8, #0xff
	mov	w0, #4
	stur	w0, [x29, #-12]                 // 4-byte Folded Spill
	bl	expect
	ldur	w1, [x29, #-4]
	mov	w0, #66
	bl	expect
	ldr	w11, [sp, #8]                   // 4-byte Folded Reload
	ldr	w9, [sp, #16]                   // 4-byte Folded Reload
	ldur	w10, [x29, #-12]                // 4-byte Folded Reload
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	stur	wzr, [x29, #-8]
	ldurb	w8, [x29, #-8]
	and	w8, w8, w11
	orr	w8, w8, w0
	sturb	w8, [x29, #-8]
	ldurb	w8, [x29, #-7]
	and	w8, w8, w11
	orr	w8, w8, w10
	sturb	w8, [x29, #-7]
	ldurb	w8, [x29, #-8]
	and	w8, w8, w9
	and	w1, w8, #0xff
	bl	expect
	ldr	w9, [sp, #16]                   // 4-byte Folded Reload
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldurb	w8, [x29, #-7]
	and	w8, w8, w9
	and	w1, w8, #0xff
	bl	expect
	ldur	w1, [x29, #-8]
	mov	w0, #1026
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	bitfield_unnamed, .Lfunc_end0-bitfield_unnamed
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bitfield_unnamed
	.addrsig_sym expect