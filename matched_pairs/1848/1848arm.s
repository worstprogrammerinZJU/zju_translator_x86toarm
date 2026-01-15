	.text
	.p2align	2                               // -- Begin function read_abstract_declarator
	.type	read_abstract_declarator,@function
read_abstract_declarator:               // @read_abstract_declarator
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x8, DECL_CAST
	ldr	w3, [x8, :lo12:DECL_CAST]
	mov	x2, xzr
	mov	x0, x2
	bl	read_declarator
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_abstract_declarator, .Lfunc_end0-read_abstract_declarator
                                        // -- End function
	.type	DECL_CAST,@object               // @DECL_CAST
	.bss
	.globl	DECL_CAST
	.p2align	2
DECL_CAST:
	.word	0                               // 0x0
	.size	DECL_CAST, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_abstract_declarator
	.addrsig_sym read_declarator
	.addrsig_sym DECL_CAST