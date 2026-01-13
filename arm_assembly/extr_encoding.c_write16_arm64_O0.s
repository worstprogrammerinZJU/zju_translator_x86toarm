	.text
	.p2align	2                               // -- Begin function write16
	.type	write16,@function
write16:                                // @write16
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldrb	w1, [sp, #4]
	bl	buf_write
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	asr	w1, w8, #8
	bl	buf_write
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	write16, .Lfunc_end0-write16
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write16
	.addrsig_sym buf_write