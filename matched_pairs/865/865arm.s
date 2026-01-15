	.text
	.globl	jq_get_exit_code                // -- Begin function jq_get_exit_code
	.p2align	2
	.type	jq_get_exit_code,@function
jq_get_exit_code:                       // @jq_get_exit_code
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	jv_copy
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_get_exit_code, .Lfunc_end0-jq_get_exit_code
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_copy