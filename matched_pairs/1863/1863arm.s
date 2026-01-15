	.text
	.p2align	2                               // -- Begin function read_cast_type
	.type	read_cast_type,@function
read_cast_type:                         // @read_cast_type
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	x0, xzr
	bl	read_decl_spec
	bl	read_abstract_declarator
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	read_cast_type, .Lfunc_end0-read_cast_type
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_cast_type
	.addrsig_sym read_abstract_declarator
	.addrsig_sym read_decl_spec