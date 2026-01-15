	.text
	.globl	prottick                        # -- Begin function prottick
	.p2align	4, 0x90
prottick:                               # @prottick
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$3600000000000, %rax            # imm = 0x34630B8A000
	movq	%rax, -40(%rbp)
	movb	$0, %al
	callq	nanoseconds@PLT
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	soonest_delayed_job@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jle	.LBB0_4
# %bb.3:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	min@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	heapremove@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	enqueue_job@PLT
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jge	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	bury_job@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_7:
	movq	$0, -64(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	tubes(%rip), %rax
	jae	.LBB0_17
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	tubes+8(%rip), %rax
	movq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	cmpq	$0, -48(%rbp)
	jg	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movb	$0, %al
	callq	process_queue@PLT
	jmp	.LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	cmpq	$0, -48(%rbp)
	jle	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	min@PLT
	movq	%rax, -40(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_8
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jle	.LBB0_21
# %bb.20:
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	min@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	heapremove@PLT
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rdi
	callq	conn_timeout@PLT
	jmp	.LBB0_18
.LBB0_22:
	movb	$0, %al
	callq	epollq_apply@PLT
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	tubes
	.p2align	3
tubes:
	.zero	16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nanoseconds
	.addrsig_sym soonest_delayed_job
	.addrsig_sym min
	.addrsig_sym heapremove
	.addrsig_sym enqueue_job
	.addrsig_sym bury_job
	.addrsig_sym process_queue
	.addrsig_sym conn_timeout
	.addrsig_sym epollq_apply
	.addrsig_sym tubes