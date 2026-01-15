	.text
	.p2align	2                               // -- Begin function parser_free
	.type	parser_free,@function
parser_free:                            // @parser_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	parser_reset
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	bl	jv_free
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #12]
	bl	jv_free
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	jv_mem_free
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #4]
	bl	jv_mem_free
	ldr	x0, [sp, #8]
	bl	jvp_dtoa_context_free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parser_free, .Lfunc_end0-parser_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_free
	.addrsig_sym parser_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym jvp_dtoa_context_free