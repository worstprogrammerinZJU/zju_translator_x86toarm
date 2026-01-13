	.text
	.globl	jq_report_error                 // -- Begin function jq_report_error
	.p2align	2
	.type	jq_report_error,@function
jq_report_error:                        // @jq_report_error
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	w0, [x9]
	ldr	w1, [sp, #4]
	blr	x8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_report_error, .Lfunc_end0-jq_report_error
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert