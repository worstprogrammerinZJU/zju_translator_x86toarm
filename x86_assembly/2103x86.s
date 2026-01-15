	.text
	.p2align	4, 0x90                         # -- Begin function set_compensation
set_compensation:                       # @set_compensation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_5
# %bb.1:
	cmpl	$0, -20(%rbp)
	je	.LBB0_5
# %bb.2:
	movq	-16(%rbp), %rdi
	callq	rebuild_filter_bank_with_compensation@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	imull	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	subl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB0_8
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB0_8:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	16(%rcx)
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	16(%rcx)
	movq	-16(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$0, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_compensation
	.addrsig_sym rebuild_filter_bank_with_compensation