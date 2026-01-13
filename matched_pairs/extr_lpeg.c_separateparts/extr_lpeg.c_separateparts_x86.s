	.text
	.p2align	4, 0x90                         # -- Begin function separateparts
separateparts:                          # @separateparts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	firstpart@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	basicUnion@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	-16(%rax), %rax
	cmpq	ICommit(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rdx
	callq	interfere@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
.LBB0_4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rsi
	movl	-28(%rbp), %edx
	subl	-52(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	separateparts
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-68(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	copypatt@PLT
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	-72(%rbp), %eax
	subl	$1, %eax
	subl	%eax, %ecx
	movq	-64(%rbp), %rax
	movslq	-72(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, -8(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	addl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	sizei@PLT
	movl	%eax, -92(%rbp)
	movl	-88(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rsi
	movl	-28(%rbp), %edx
	subl	-52(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	separateparts
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movl	-92(%rbp), %edx
	callq	copypatt@PLT
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	IChoice(%rip), %esi
	movl	-52(%rbp), %edx
	subl	-92(%rbp), %edx
	addl	$1, %edx
	movl	$1, %ecx
	callq	setinstaux@PLT
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movslq	-92(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rsi
	movl	-52(%rbp), %edx
	subl	-92(%rbp), %edx
	subl	$1, %edx
	callq	copypatt@PLT
	movl	-52(%rbp), %eax
	subl	-92(%rbp), %eax
	subl	$1, %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movq	ICommit(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-88(%rbp), %eax
	subl	$1, %eax
	subl	%eax, %edx
	callq	setinst@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ICommit
	.p2align	3
ICommit:
	.quad	0                               # 0x0
	.globl	IChoice
	.p2align	2
IChoice:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym separateparts
	.addrsig_sym firstpart
	.addrsig_sym basicUnion
	.addrsig_sym interfere
	.addrsig_sym copypatt
	.addrsig_sym sizei
	.addrsig_sym setinstaux
	.addrsig_sym setinst
	.addrsig_sym ICommit
	.addrsig_sym IChoice