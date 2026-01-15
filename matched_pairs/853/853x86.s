	.text
	.p2align	4, 0x90                         # -- Begin function frame_local_var
frame_local_var:                        # @frame_local_var
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	frame_get_level@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	stack_block@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_local_var
	.addrsig_sym stack_block
	.addrsig_sym frame_get_level
	.addrsig_sym assert