	.text
	.p2align	4, 0x90                         # -- Begin function remove_delayed_job
remove_delayed_job:                     # @remove_delayed_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	Delayed(%rip), %rax
	je	.LBB0_3
.LBB0_2:
	movq	$0, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	heapremove@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Delayed
	.p2align	3
Delayed:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_delayed_job
	.addrsig_sym heapremove
	.addrsig_sym Delayed