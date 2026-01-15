	.text
	.p2align	4, 0x90                         # -- Begin function remove_buried_job
remove_buried_job:                      # @remove_buried_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	Buried(%rip), %rax
	je	.LBB0_3
.LBB0_2:
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	job_list_remove@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# %bb.4:
	movl	global_stat(%rip), %eax
	addl	$-1, %eax
	movl	%eax, global_stat(%rip)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Buried
	.p2align	3
Buried:
	.quad	0                               # 0x0
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_buried_job
	.addrsig_sym job_list_remove
	.addrsig_sym Buried
	.addrsig_sym global_stat