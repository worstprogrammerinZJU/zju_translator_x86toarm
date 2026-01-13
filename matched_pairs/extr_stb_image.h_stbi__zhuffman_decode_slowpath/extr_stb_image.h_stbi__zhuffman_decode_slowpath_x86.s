	.text
	.p2align	4, 0x90                         # -- Begin function stbi__zhuffman_decode_slowpath
stbi__zhuffman_decode_slowpath:         # @stbi__zhuffman_decode_slowpath
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	$16, %esi
	callq	stbi__bit_reverse@PLT
	movl	%eax, -36(%rbp)
	movl	STBI__ZFAST_BITS(%rip), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_3
# %bb.2:
	jmp	.LBB0_5
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_5:
	cmpl	$16, -32(%rbp)
	jne	.LBB0_7
# %bb.6:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movl	-36(%rbp), %eax
	movl	$16, %ecx
	subl	-32(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-32(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__ZFAST_BITS
	.p2align	2
STBI__ZFAST_BITS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zhuffman_decode_slowpath
	.addrsig_sym stbi__bit_reverse
	.addrsig_sym STBI_ASSERT
	.addrsig_sym STBI__ZFAST_BITS