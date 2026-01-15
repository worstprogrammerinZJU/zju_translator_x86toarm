	.text
	.globl	stbiw__write_run_data           # -- Begin function stbiw__write_run_data
	.p2align	4, 0x90
stbiw__write_run_data:                  # @stbiw__write_run_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	%al, -13(%rbp)
	movl	-12(%rbp), %edi
	addl	$128, %edi
	callq	STBIW_UCHAR@PLT
	movb	%al, -14(%rbp)
	movl	-12(%rbp), %eax
	addl	$128, %eax
	cmpl	$255, %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBIW_ASSERT@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-14(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	leaq	-13(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym STBIW_UCHAR
	.addrsig_sym STBIW_ASSERT