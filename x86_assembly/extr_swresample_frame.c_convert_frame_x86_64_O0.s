	.text
	.p2align	4, 0x90                         # -- Begin function convert_frame
convert_frame:                          # @convert_frame
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
.LBB0_2:
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rcx
	movl	-64(%rbp), %r8d
	callq	swr_convert@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB0_8
# %bb.5:
	cmpq	$0, -24(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB0_7:
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_8:
	cmpq	$0, -24(%rbp)
	je	.LBB0_10
# %bb.9:
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_10:
	movl	$0, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym convert_frame
	.addrsig_sym swr_convert