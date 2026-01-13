	.text
	.p2align	4, 0x90                         # -- Begin function stbi__fill_bits
stbi__fill_bits:                        # @stbi__fill_bits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	setb	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movq	-8(%rbp), %rdi
	callq	stbi__zget8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	orl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$24, (%rax)
	jle	.LBB0_1
# %bb.3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__fill_bits
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__zget8