	.text
	.p2align	2                               // -- Begin function read_oldstyle_param_type
	.type	read_oldstyle_param_type,@function
read_oldstyle_param_type:               // @read_oldstyle_param_type
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	bl	read_oldstyle_param_args
	str	x0, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	update_oldstyle_param_type
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_oldstyle_param_type, .Lfunc_end0-read_oldstyle_param_type
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_oldstyle_param_type
	.addrsig_sym read_oldstyle_param_args
	.addrsig_sym update_oldstyle_param_type