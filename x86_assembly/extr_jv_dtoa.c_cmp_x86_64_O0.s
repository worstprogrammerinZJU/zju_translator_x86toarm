	.text
	.p2align	4, 0x90                         # -- Begin function cmp
cmp:                                    # @cmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movslq	-72(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movslq	-72(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-8, %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-8, %rdx
	movq	%rdx, -56(%rbp)
	cmpq	-8(%rcx), %rax
	je	.LBB0_5
# %bb.4:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movl	$1, %eax
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	cmpq	%rsi, %rdx
	cmovll	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	ja	.LBB0_7
# %bb.6:
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_8:
	movl	$0, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym cmp