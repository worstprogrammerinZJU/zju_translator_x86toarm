	.text
	.p2align	4, 0x90                         # -- Begin function stbi__out_gif_code
stbi__out_gif_code:                     # @stbi__out_gif_code
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jl	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	stbi__out_gif_code
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB0_4
# %bb.3:
	jmp	.LBB0_13
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movq	-8(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-36(%rbp), %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	movl	$1, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	8(%rcx), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$128, 12(%rax)
	jle	.LBB0_6
# %bb.5:
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB0_6:
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$4, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movq	-8(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jl	.LBB0_13
# %bb.7:
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	4(%rdx), %ecx
	movb	%al, -49(%rbp)                  # 1-byte Spill
	jl	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 52(%rax)
	setg	%al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movb	-49(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_11
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	imull	56(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	sarl	$1, %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 52(%rax)
	jmp	.LBB0_8
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__out_gif_code