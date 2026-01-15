	.text
	.globl	dict_put                        // -- Begin function dict_put
	.p2align	2
	.type	dict_put,@function
dict_put:                               // @dict_put
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	map_put
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	ldr	x1, [sp, #16]
	bl	vec_push
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	dict_put, .Lfunc_end0-dict_put
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym map_put
	.addrsig_sym vec_push