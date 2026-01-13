	.text
	.p2align	4, 0x90                         # -- Begin function context_to_name
context_to_name:                        # @context_to_name
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	leaq	.L.str(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SWR"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym context_to_name