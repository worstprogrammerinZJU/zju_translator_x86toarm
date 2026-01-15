	.text
	.globl	job_list_remove                 # -- Begin function job_list_remove
	.p2align	4, 0x90
job_list_remove:                        # @job_list_remove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	job_list_is_empty@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rdi
	callq	job_list_reset@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym job_list_is_empty
	.addrsig_sym job_list_reset