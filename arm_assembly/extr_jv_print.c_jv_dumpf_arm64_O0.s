	.text
	.globl	jv_dumpf                        // -- Begin function jv_dumpf
	.p2align	2
	.type	jv_dumpf,@function
jv_dumpf:                               // @jv_dumpf
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	bl	tsd_dtoa_context_get
	ldur	w1, [x29, #-4]
	ldr	w2, [sp, #12]
	ldr	x4, [sp, #16]
	mov	w5, wzr
	mov	w3, w5
	bl	jv_dump_term
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_dumpf, .Lfunc_end0-jv_dumpf
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_dump_term
	.addrsig_sym tsd_dtoa_context_get