	.text
	.p2align	2                               // -- Begin function copy_type
	.type	copy_type,@function
copy_type:                              // @copy_type
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	mov	w0, #4
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	malloc
	ldr	w2, [sp, #12]                   // 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	memcpy
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	copy_type, .Lfunc_end0-copy_type
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_type
	.addrsig_sym malloc
	.addrsig_sym memcpy