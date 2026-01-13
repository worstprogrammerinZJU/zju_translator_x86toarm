	.text
	.p2align	4, 0x90                         # -- Begin function copy
copy:                                   # @copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# %bb.1:
	movl	$0, -24(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	imull	8(%rax), %edx
	callq	memcpy@PLT
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %esi
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	imull	12(%rax), %edx
	movq	-8(%rbp), %rax
	imull	8(%rax), %edx
	callq	memcpy@PLT
.LBB0_7:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy
	.addrsig_sym av_assert0
	.addrsig_sym memcpy