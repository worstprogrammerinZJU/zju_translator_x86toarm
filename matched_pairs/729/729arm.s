	.text
	.globl	dict_get                        // -- Begin function dict_get
	.p2align	2
	.type	dict_get,@function
dict_get:                               // @dict_get
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	ldr	x1, [sp]
	bl	map_get
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	dict_get, .Lfunc_end0-dict_get
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym map_get