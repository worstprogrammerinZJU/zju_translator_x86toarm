	.text
	.p2align	2                               // -- Begin function read_struct_def
	.type	read_struct_def,@function
read_struct_def:                        // @read_struct_def
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, #1
	bl	read_rectype_def
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	read_struct_def, .Lfunc_end0-read_struct_def
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_def
	.addrsig_sym read_rectype_def