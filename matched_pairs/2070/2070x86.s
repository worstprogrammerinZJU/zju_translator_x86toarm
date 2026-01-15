	.text
	.p2align	4, 0x90                         # -- Begin function wait_for_job
wait_for_job:                           # @wait_for_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	STATE_WAIT(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rdi
	callq	enqueue_waiting_conn@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdi
	movl	$104, %esi
	callq	epollq_add@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STATE_WAIT
	.p2align	2
STATE_WAIT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym wait_for_job
	.addrsig_sym enqueue_waiting_conn
	.addrsig_sym epollq_add
	.addrsig_sym STATE_WAIT