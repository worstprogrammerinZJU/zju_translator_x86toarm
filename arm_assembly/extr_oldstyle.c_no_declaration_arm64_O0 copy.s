	.text
	.globl	no_declaration                  // -- Begin function no_declaration
	.p2align	2
	.type	no_declaration,@function
no_declaration:                         // @no_declaration
// %bb.0:
	mov	w0, #3
	ret
.Lfunc_end0:
	.size	no_declaration, .Lfunc_end0-no_declaration
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig