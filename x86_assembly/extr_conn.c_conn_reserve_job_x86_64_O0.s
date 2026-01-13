	.text
	.globl	conn_reserve_job                # -- Begin function conn_reserve_job
	.p2align	4, 0x90
conn_reserve_job:                       # @conn_reserve_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 32(%rax)
	movb	$0, %al
	callq	nanoseconds@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	Reserved(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movq	-16(%rbp), %rsi
	callq	job_list_insert@PLT
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	conn_set_soonestjob@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Reserved
	.p2align	2
Reserved:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nanoseconds
	.addrsig_sym job_list_insert
	.addrsig_sym conn_set_soonestjob
	.addrsig_sym Reserved