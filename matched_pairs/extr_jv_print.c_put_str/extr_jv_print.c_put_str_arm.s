	.text
	.p2align	2                               // -- Begin function put_str
	.type	put_str,@function
put_str:                                // @put_str
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	w3, [sp, #20]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	strlen
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x2, [x29, #-16]
	ldr	x3, [sp, #24]
	ldr	w4, [sp, #20]
	bl	put_buf
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	put_str, .Lfunc_end0-put_str
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_str
	.addrsig_sym put_buf
	.addrsig_sym strlen