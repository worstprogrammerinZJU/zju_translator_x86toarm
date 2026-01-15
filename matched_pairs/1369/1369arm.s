	.text
	.globl	jv_parser_free                  // -- Begin function jv_parser_free
	.p2align	2
	.type	jv_parser_free,@function
jv_parser_free:                         // @jv_parser_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	parser_free
	ldr	x0, [sp, #8]
	bl	jv_mem_free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_parser_free, .Lfunc_end0-jv_parser_free
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_free
	.addrsig_sym jv_mem_free