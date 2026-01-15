	.text
	.p2align	2                               // -- Begin function write32
	.type	write32,@function
write32:                                // @write32
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldrh	w1, [sp, #4]
	bl	write16
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	asr	w1, w8, #16
	bl	write16
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	write32, .Lfunc_end0-write32
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write32
	.addrsig_sym write16