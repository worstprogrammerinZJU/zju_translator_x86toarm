	.text
	.globl	close_output_file               # -- Begin function close_output_file
	.p2align	4, 0x90
close_output_file:                      # @close_output_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	outputfp(%rip), %edi
	callq	fclose@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	outputfp
	.p2align	2
outputfp:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fclose
	.addrsig_sym outputfp