	.text
	.p2align	2                               // -- Begin function read_union_def
	.type	read_union_def,@function
read_union_def:                         // @read_union_def
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, wzr
	bl	read_rectype_def
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	read_union_def, .Lfunc_end0-read_union_def
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_union_def
	.addrsig_sym read_rectype_def