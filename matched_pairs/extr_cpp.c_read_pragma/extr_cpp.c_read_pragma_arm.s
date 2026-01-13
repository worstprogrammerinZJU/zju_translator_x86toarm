	.text
	.p2align	2                               // -- Begin function read_pragma
	.type	read_pragma,@function
read_pragma:                            // @read_pragma
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	read_ident
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	parse_pragma_operand
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_pragma, .Lfunc_end0-read_pragma
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_pragma
	.addrsig_sym read_ident
	.addrsig_sym parse_pragma_operand