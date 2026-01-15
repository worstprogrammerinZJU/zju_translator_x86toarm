	.text
	.p2align	4, 0x90                         # -- Begin function remove_ready_job
remove_ready_job:                       # @remove_ready_job
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
	cmpq	Ready(%rip), %rax
	je	.LBB0_3
.LBB0_2:
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$4, %rdi
	movq	-16(%rbp), %rax
	movl	24(%rax), %esi
	callq	heapremove@PLT
	movl	ready_ct(%rip), %eax
	addl	$-1, %eax
	movl	%eax, ready_ct(%rip)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	URGENT_THRESHOLD(%rip), %rax
	jge	.LBB0_5
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
	.globl	Ready
	.p2align	3
Ready:
	.quad	0                               # 0x0
	.globl	ready_ct
	.p2align	2
ready_ct:
	.long	0                               # 0x0
	.globl	URGENT_THRESHOLD
	.p2align	3
URGENT_THRESHOLD:
	.quad	0                               # 0x0
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_ready_job
	.addrsig_sym heapremove
	.addrsig_sym Ready
	.addrsig_sym ready_ct
	.addrsig_sym URGENT_THRESHOLD
	.addrsig_sym global_stat