	.text
	.globl	vec_pop                         # -- Begin function vec_pop
	.p2align	4, 0x90
vec_pop:                                # @vec_pop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	seta	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, %rsi
	addq	$-1, %rsi
	movq	%rsi, (%rdx)
	movq	-8(%rax,%rcx,8), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert