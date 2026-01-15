	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_huff_decode
stbi__jpeg_huff_decode:                 # @stbi__jpeg_huff_decode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$16, (%rax)
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__grow_buffer_unsafe@PLT
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	$32, %ecx
	subl	FAST_BITS(%rip), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	FAST_BITS(%rip), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -36(%rbp)
	cmpl	$255, -36(%rbp)
	jge	.LBB0_6
# %bb.3:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jle	.LBB0_5
# %bb.4:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_5:
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	sarl	$16, %eax
	movl	%eax, -28(%rbp)
	movl	FAST_BITS(%rip), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jae	.LBB0_9
# %bb.8:
	jmp	.LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_7
.LBB0_11:
	cmpl	$17, -36(%rbp)
	jne	.LBB0_13
# %bb.12:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	$16, %ecx
	movl	%ecx, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_13:
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jle	.LBB0_15
# %bb.14:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_15:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	$32, %ecx
	subl	-36(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movq	stbi__bmask(%rip), %rcx
	movslq	-36(%rbp), %rdx
	andl	(%rcx,%rdx,4), %eax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdx
	movslq	-32(%rbp), %rsi
	movl	$32, %ecx
	subl	(%rdx,%rsi,4), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movq	stbi__bmask(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movslq	-32(%rbp), %rsi
	movslq	(%rdx,%rsi,4), %rdx
	andl	(%rcx,%rdx,4), %eax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -4(%rbp)
.LBB0_16:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.long	0                               # 0x0
	.globl	stbi__bmask
	.p2align	3
stbi__bmask:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym STBI_ASSERT
	.addrsig_sym FAST_BITS
	.addrsig_sym stbi__bmask