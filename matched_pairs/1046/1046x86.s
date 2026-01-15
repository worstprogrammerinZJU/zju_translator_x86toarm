	.text
	.globl	set_output_file                 # -- Begin function set_output_file
	.p2align	4, 0x90
set_output_file:                        # @set_output_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, outputfp(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	outputfp
	.p2align	3
outputfp:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym outputfp