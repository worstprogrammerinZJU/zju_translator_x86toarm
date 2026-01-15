	.text
	.p2align	2                               // -- Begin function buried_job_p
	.type	buried_job_p,@function
buried_job_p:                           // @buried_job_p
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	job_list_is_empty
	subs	w8, w0, #0
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	buried_job_p, .Lfunc_end0-buried_job_p
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buried_job_p
	.addrsig_sym job_list_is_empty