	.text
	.globl	connsetproducer                 # -- Begin function connsetproducer
	.p2align	4, 0x90
connsetproducer:                        # @connsetproducer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	CONN_TYPE_PRODUCER(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movl	CONN_TYPE_PRODUCER(%rip), %ecx
	movq	-8(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	cur_producer_ct(%rip), %eax
	addl	$1, %eax
	movl	%eax, cur_producer_ct(%rip)
.LBB0_3:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CONN_TYPE_PRODUCER
	.p2align	2
CONN_TYPE_PRODUCER:
	.long	0                               # 0x0
	.globl	cur_producer_ct
	.p2align	2
cur_producer_ct:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CONN_TYPE_PRODUCER
	.addrsig_sym cur_producer_ct