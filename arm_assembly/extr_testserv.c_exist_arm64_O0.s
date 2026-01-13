	.text
	.p2align	2                               // -- Begin function exist
	.type	exist,@function
exist:                                  // @exist
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	x1, sp, #4
	bl	stat
	str	w0, [sp]
	ldr	w8, [sp]
	adds	w8, w8, #1
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	exist, .Lfunc_end0-exist
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exist
	.addrsig_sym stat