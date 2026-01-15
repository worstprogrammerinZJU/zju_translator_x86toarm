	.text
	.globl	connclose                       # -- Begin function connclose
	.p2align	4, 0x90
connclose:                              # @connclose
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$72, %rdi
	xorl	%esi, %esi
	callq	sockwant@PLT
	movq	-8(%rbp), %rax
	movl	72(%rax), %edi
	callq	close@PLT
	cmpq	$0, verbose(%rip)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	72(%rax), %esi
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	job_free@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB0_5
# %bb.3:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	cmpq	Copy(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	job_free@PLT
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	CONN_TYPE_PRODUCER(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:
	movl	cur_producer_ct(%rip), %eax
	addl	$-1, %eax
	movl	%eax, cur_producer_ct(%rip)
.LBB0_7:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	CONN_TYPE_WORKER(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_9
# %bb.8:
	movl	cur_worker_ct(%rip), %eax
	addl	$-1, %eax
	movl	%eax, cur_worker_ct(%rip)
.LBB0_9:
	movl	cur_conn_ct(%rip), %eax
	addl	$-1, %eax
	movl	%eax, cur_conn_ct(%rip)
	movq	-8(%rbp), %rdi
	callq	remove_waiting_conn@PLT
	movq	-8(%rbp), %rdi
	callq	has_reserved_job@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movq	-8(%rbp), %rdi
	callq	enqueue_reserved_jobs@PLT
.LBB0_11:
	movq	-8(%rbp), %rdi
	addq	$40, %rdi
	callq	ms_clear@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_13
# %bb.12:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	callq	heapremove@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB0_13:
	movq	-8(%rbp), %rdi
	callq	free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	verbose
	.p2align	3
verbose:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"close %d\n"
	.bss
	.globl	Copy
	.p2align	3
Copy:
	.quad	0                               # 0x0
	.globl	CONN_TYPE_PRODUCER
	.p2align	2
CONN_TYPE_PRODUCER:
	.long	0                               # 0x0
	.globl	cur_producer_ct
	.p2align	2
cur_producer_ct:
	.long	0                               # 0x0
	.globl	CONN_TYPE_WORKER
	.p2align	2
CONN_TYPE_WORKER:
	.long	0                               # 0x0
	.globl	cur_worker_ct
	.p2align	2
cur_worker_ct:
	.long	0                               # 0x0
	.globl	cur_conn_ct
	.p2align	2
cur_conn_ct:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sockwant
	.addrsig_sym close
	.addrsig_sym printf
	.addrsig_sym job_free
	.addrsig_sym remove_waiting_conn
	.addrsig_sym has_reserved_job
	.addrsig_sym enqueue_reserved_jobs
	.addrsig_sym ms_clear
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym heapremove
	.addrsig_sym free
	.addrsig_sym verbose
	.addrsig_sym Copy
	.addrsig_sym CONN_TYPE_PRODUCER
	.addrsig_sym cur_producer_ct
	.addrsig_sym CONN_TYPE_WORKER
	.addrsig_sym cur_worker_ct
	.addrsig_sym cur_conn_ct