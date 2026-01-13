	.text
	.p2align	4, 0x90                         # -- Begin function tokenadd
tokenadd:                               # @tokenadd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	shll	$1, %ecx
	addl	$256, %ecx                      # imm = 0x100
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	callq	jv_mem_realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movb	-9(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tokenadd
	.addrsig_sym assert
	.addrsig_sym jv_mem_realloc