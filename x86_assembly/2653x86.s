	.text
	.globl	walresvput                      # -- Begin function walresvput
	.p2align	4, 0x90
walresvput:                             # @walresvput
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movslq	-20(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	callq	strlen@PLT
	movq	%rax, %rcx
	movslq	-20(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movslq	-20(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	addq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	reserve@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym reserve