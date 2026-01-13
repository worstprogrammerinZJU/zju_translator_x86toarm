	.text
	.p2align	2                               // -- Begin function make_ast
	.type	make_ast,@function
make_ast:                               // @make_ast
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	mov	w0, #4
	bl	malloc
	str	x0, [sp]
	ldr	x9, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [x9]
	adrp	x8, source_loc
	ldr	w8, [x8, :lo12:source_loc]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_ast, .Lfunc_end0-make_ast
                                        // -- End function
	.type	source_loc,@object              // @source_loc
	.bss
	.globl	source_loc
	.p2align	2
source_loc:
	.word	0                               // 0x0
	.size	source_loc, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_ast
	.addrsig_sym malloc
	.addrsig_sym source_loc