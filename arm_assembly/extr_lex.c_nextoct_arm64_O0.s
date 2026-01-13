	.text
	.p2align	2                               // -- Begin function nextoct
	.type	nextoct,@function
nextoct:                                // @nextoct
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	peek
	stur	w0, [x29, #-4]
	ldur	w10, [x29, #-4]
	mov	w9, #48
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #55
	cset	w8, le
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	nextoct, .Lfunc_end0-nextoct
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nextoct
	.addrsig_sym peek