	.text
	.p2align	4, 0x90                         # -- Begin function stbi__getn
stbi__getn:                             # @stbi__getn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	8(%rcx), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-32(%rbp), %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %edi
	movq	-24(%rbp), %rsi
	movslq	-32(%rbp), %rcx
	addq	%rcx, %rsi
	movl	-28(%rbp), %edx
	subl	-32(%rbp), %edx
	callq	*%rax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jg	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-28(%rbp), %edx
	callq	memcpy@PLT
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rax
	addq	8(%rax), %rcx
	movq	%rcx, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	$0, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__getn
	.addrsig_sym memcpy