	.text
	.p2align	2                               // -- Begin function read_struct_initializer
	.type	read_struct_initializer,@function
read_struct_initializer:                // @read_struct_initializer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	ldr	w3, [sp, #8]
	bl	read_struct_initializer_sub
	ldur	x0, [x29, #-8]
	bl	sort_inits
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_struct_initializer, .Lfunc_end0-read_struct_initializer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_initializer
	.addrsig_sym read_struct_initializer_sub
	.addrsig_sym sort_inits