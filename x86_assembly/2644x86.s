	.text
	.p2align	4, 0x90                         # -- Begin function ratio
ratio:                                  # @ratio
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	%ecx, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ratio