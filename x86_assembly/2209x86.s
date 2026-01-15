	.text
	.p2align	4, 0x90                         # -- Begin function stbi__gif_parse_colortable
stbi__gif_parse_colortable:             # @stbi__gif_parse_colortable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	$255, %ecx
	xorl	%eax, %eax
	cmpl	%esi, %edx
	cmovel	%eax, %ecx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, 12(%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_parse_colortable
	.addrsig_sym stbi__get8