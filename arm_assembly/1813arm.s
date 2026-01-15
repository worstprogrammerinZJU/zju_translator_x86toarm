	.text
	.p2align	2                               // -- Begin function define_builtin
	.type	define_builtin,@function
define_builtin:                         // @define_builtin
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	w2, #1
	mov	w3, wzr
	bl	make_func_type
	ldur	x1, [x29, #-8]
	bl	ast_gvar
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	define_builtin, .Lfunc_end0-define_builtin
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym define_builtin
	.addrsig_sym ast_gvar
	.addrsig_sym make_func_type