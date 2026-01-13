	.text
	.p2align	4, 0x90                         # -- Begin function remove_this_reserved_job
remove_this_reserved_job:               # @remove_this_reserved_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	job_list_remove@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	global_stat(%rip), %eax
	addl	$-1, %eax
	movl	%eax, global_stat(%rip)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_this_reserved_job
	.addrsig_sym job_list_remove
	.addrsig_sym global_stat