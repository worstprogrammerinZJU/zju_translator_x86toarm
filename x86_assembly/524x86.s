	.text
	.globl	get_random_paths                # -- Begin function get_random_paths
	.p2align	4, 0x90
get_random_paths:                       # @get_random_paths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -24(%rbp)
	leaq	mutex(%rip), %rdi
	callq	pthread_mutex_lock@PLT
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	rand@PLT
	cltd
	idivl	-16(%rbp)
	movl	%edx, -32(%rbp)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	mutex(%rip), %rdi
	callq	pthread_mutex_unlock@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	mutex
	.p2align	2
mutex:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym pthread_mutex_lock
	.addrsig_sym rand
	.addrsig_sym pthread_mutex_unlock
	.addrsig_sym mutex