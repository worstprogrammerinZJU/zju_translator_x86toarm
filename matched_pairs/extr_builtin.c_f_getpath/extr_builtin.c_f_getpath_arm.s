	.text
	.p2align	2                               // -- Begin function f_getpath
	.type	f_getpath,@function
f_getpath:                              // @f_getpath
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-12]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-16]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	jv_copy
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-16]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_getpath
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	_jq_path_append
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_getpath, .Lfunc_end0-f_getpath
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_getpath
	.addrsig_sym _jq_path_append
	.addrsig_sym jv_getpath
	.addrsig_sym jv_copy