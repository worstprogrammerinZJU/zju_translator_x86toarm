	.text
	.p2align	4, 0x90                         # -- Begin function optionals
optionals:                              # @optionals
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	imull	%eax, %esi
	addl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	movl	IChoice(%rip), %esi
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	$1, %eax
	imull	%eax, %edx
	addl	$1, %edx
	callq	setinst@PLT
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	movl	IPartialCommit(%rip), %esi
	movl	$1, %edx
	callq	setinst@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rdi
	addq	$-4, %rdi
	movl	ICommit(%rip), %esi
	movl	$1, %edx
	callq	setinst@PLT
	movq	-32(%rbp), %rdi
	callq	optimizechoice@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IChoice
	.p2align	2
IChoice:
	.long	0                               # 0x0
	.globl	IPartialCommit
	.p2align	2
IPartialCommit:
	.long	0                               # 0x0
	.globl	ICommit
	.p2align	2
ICommit:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optionals
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym addpatt
	.addrsig_sym optimizechoice
	.addrsig_sym IChoice
	.addrsig_sym IPartialCommit
	.addrsig_sym ICommit