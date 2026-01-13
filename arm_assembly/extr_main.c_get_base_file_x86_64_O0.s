	.text
	.globl	get_base_file                   # -- Begin function get_base_file
	.p2align	4, 0x90
get_base_file:                          # @get_base_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	infile(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	infile
	.p2align	3
infile:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym infile