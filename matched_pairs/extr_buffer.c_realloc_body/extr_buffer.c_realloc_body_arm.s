	.text
	.p2align	2                               // -- Begin function realloc_body
	.type	realloc_body,@function
realloc_body:                           // @realloc_body
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	lsl	w8, w8, #1
	stur	w8, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	malloc
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	w2, [x8, #16]
	bl	memcpy
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	realloc_body, .Lfunc_end0-realloc_body
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc_body
	.addrsig_sym malloc
	.addrsig_sym memcpy