	.text
	.p2align	4, 0x90                         # -- Begin function grow
grow:                                   # @grow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	shll	$1, %eax
	cltq
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$1, -32(%rbp)
.LBB0_2:
	movq	-32(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rax
	shlq	$3, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free@PLT
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym grow
	.addrsig_sym malloc
	.addrsig_sym memcpy
	.addrsig_sym free