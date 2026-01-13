	.text
	.p2align	4, 0x90                         # -- Begin function firstpart
firstpart:                              # @firstpart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	istest@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	IJmp(%rip), %rax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	ICommit(%rip), %rax
	jne	.LBB0_5
.LBB0_3:
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	addl	(%rcx), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_5
# %bb.4:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_5:
	jmp	.LBB0_12
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	IChoice(%rip), %rax
	jne	.LBB0_11
# %bb.7:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	ICommit(%rip), %rax
	jne	.LBB0_10
# %bb.8:
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	addl	(%rcx), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_10
# %bb.9:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	$0, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IJmp
	.p2align	3
IJmp:
	.quad	0                               # 0x0
	.globl	ICommit
	.p2align	3
ICommit:
	.quad	0                               # 0x0
	.globl	IChoice
	.p2align	3
IChoice:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym firstpart
	.addrsig_sym istest
	.addrsig_sym IJmp
	.addrsig_sym ICommit
	.addrsig_sym IChoice