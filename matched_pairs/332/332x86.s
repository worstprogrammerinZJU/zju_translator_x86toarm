	.text
	.globl	connsetworker                   # -- Begin function connsetworker
	.p2align	4, 0x90
connsetworker:                          # @connsetworker
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	CONN_TYPE_WORKER(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movl	CONN_TYPE_WORKER(%rip), %ecx
	movq	-8(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	cur_worker_ct(%rip), %eax
	addl	$1, %eax
	movl	%eax, cur_worker_ct(%rip)
.LBB0_3:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CONN_TYPE_WORKER
	.p2align	2
CONN_TYPE_WORKER:
	.long	0                               # 0x0
	.globl	cur_worker_ct
	.p2align	2
cur_worker_ct:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CONN_TYPE_WORKER
	.addrsig_sym cur_worker_ct