	.text
	.p2align	2                               // -- Begin function read_if
	.type	read_if,@function
read_if:                                // @read_if
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	read_constexpr
	bl	do_read_if
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	read_if, .Lfunc_end0-read_if
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_if
	.addrsig_sym do_read_if
	.addrsig_sym read_constexpr