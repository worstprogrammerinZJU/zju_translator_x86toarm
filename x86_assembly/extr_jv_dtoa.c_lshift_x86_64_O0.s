	.text
	.p2align	4, 0x90                         # -- Begin function lshift
lshift:                                 # @lshift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	Balloc@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -24(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -64(%rbp)
	movl	$0, (%rax)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	4(%rcx), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB0_15
# %bb.9:
	movl	$16, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -76(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	orl	-76(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -56(%rbp)
	movl	(%rax), %eax
	movl	-28(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -76(%rbp)
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.LBB0_10
# %bb.12:
	movl	-76(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, %eax
	je	.LBB0_14
# %bb.13:
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB0_14:
	jmp	.LBB0_19
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -56(%rbp)
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -64(%rbp)
	movl	%ecx, (%rax)
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.LBB0_16
# %bb.18:
	jmp	.LBB0_19
.LBB0_19:
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Bfree@PLT
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lshift
	.addrsig_sym Balloc
	.addrsig_sym Bfree