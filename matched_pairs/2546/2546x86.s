	.text
	.globl	zalloc                          # -- Begin function zalloc
	.p2align	4, 0x90
zalloc:                                 # @zalloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %edx
	xorl	%esi, %esi
	callq	memset@PLT
.LBB0_2:
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym memset