	.text
	.p2align	2                               // -- Begin function f_dump
	.type	f_dump,@function
f_dump:                                 // @f_dump
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	mov	w1, wzr
	bl	jv_dump_string
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_dump, .Lfunc_end0-f_dump
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_dump
	.addrsig_sym jv_dump_string