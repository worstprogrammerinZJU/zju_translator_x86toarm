	.text
	.globl	no_declaration                  # -- Begin function no_declaration
	.p2align	4, 0x90
no_declaration:                         # @no_declaration
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig