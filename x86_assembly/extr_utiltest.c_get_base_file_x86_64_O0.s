	.text
	.globl	get_base_file                   # -- Begin function get_base_file
	.p2align	4, 0x90
get_base_file:                          # @get_base_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig