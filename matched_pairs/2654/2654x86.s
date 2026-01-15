	.text
	.globl	walresvupdate                   # -- Begin function walresvupdate
	.p2align	4, 0x90
walresvupdate:                          # @walresvupdate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movslq	-12(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	movslq	-12(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	reserve@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym reserve