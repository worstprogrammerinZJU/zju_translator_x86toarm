	.text
	.globl	stbiw__write_dump_data          # -- Begin function stbiw__write_dump_data
	.p2align	4, 0x90
stbiw__write_dump_data:                 # @stbiw__write_dump_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	STBIW_UCHAR@PLT
	movb	%al, -25(%rbp)
	cmpl	$128, -12(%rbp)
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBIW_ASSERT@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-25(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-24(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym STBIW_UCHAR
	.addrsig_sym STBIW_ASSERT