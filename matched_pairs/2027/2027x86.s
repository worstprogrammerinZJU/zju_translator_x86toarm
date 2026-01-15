	.text
	.p2align	4, 0x90                         # -- Begin function conn_timeout
conn_timeout:                           # @conn_timeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	conn_waiting@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	conndeadlinesoon@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movl	$1, -12(%rbp)
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	connsoonestjob@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	nanoseconds@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jl	.LBB0_7
# %bb.6:
	jmp	.LBB0_12
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	job_copy@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	movl	timeout_ct(%rip), %eax
	addl	$1, %eax
	movl	%eax, timeout_ct(%rip)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	remove_this_reserved_job@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	enqueue_job@PLT
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jge	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-24(%rbp), %rsi
	xorl	%edx, %edx
	callq	bury_job@PLT
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	movq	-8(%rbp), %rdi
	callq	connsched@PLT
	jmp	.LBB0_4
.LBB0_12:
	cmpl	$0, -12(%rbp)
	je	.LBB0_14
# %bb.13:
	movq	-8(%rbp), %rdi
	callq	remove_waiting_conn@PLT
	movq	-8(%rbp), %rdi
	movl	MSG_DEADLINE_SOON(%rip), %esi
	callq	reply_msg@PLT
	jmp	.LBB0_18
.LBB0_14:
	movq	-8(%rbp), %rdi
	callq	conn_waiting@PLT
	cmpq	$0, %rax
	je	.LBB0_17
# %bb.15:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jl	.LBB0_17
# %bb.16:
	movq	-8(%rbp), %rax
	movq	$-1, (%rax)
	movq	-8(%rbp), %rdi
	callq	remove_waiting_conn@PLT
	movq	-8(%rbp), %rdi
	movl	MSG_TIMED_OUT(%rip), %esi
	callq	reply_msg@PLT
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	timeout_ct
	.p2align	2
timeout_ct:
	.long	0                               # 0x0
	.globl	MSG_DEADLINE_SOON
	.p2align	2
MSG_DEADLINE_SOON:
	.long	0                               # 0x0
	.globl	MSG_TIMED_OUT
	.p2align	2
MSG_TIMED_OUT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conn_timeout
	.addrsig_sym conn_waiting
	.addrsig_sym conndeadlinesoon
	.addrsig_sym connsoonestjob
	.addrsig_sym nanoseconds
	.addrsig_sym job_copy
	.addrsig_sym enqueue_job
	.addrsig_sym remove_this_reserved_job
	.addrsig_sym bury_job
	.addrsig_sym connsched
	.addrsig_sym remove_waiting_conn
	.addrsig_sym reply_msg
	.addrsig_sym timeout_ct
	.addrsig_sym MSG_DEADLINE_SOON
	.addrsig_sym MSG_TIMED_OUT