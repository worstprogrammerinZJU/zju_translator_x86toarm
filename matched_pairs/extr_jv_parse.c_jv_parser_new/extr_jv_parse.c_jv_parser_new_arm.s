	.text
	.globl	jv_parser_new                   // -- Begin function jv_parser_new
	.p2align	2
	.type	jv_parser_new,@function
jv_parser_new:                          // @jv_parser_new
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	mov	w0, #4
	bl	jv_mem_alloc
	str	x0, [sp]
	ldr	x0, [sp]
	ldur	w1, [x29, #-4]
	bl	parser_init
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_parser_new, .Lfunc_end0-jv_parser_new
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc
	.addrsig_sym parser_init