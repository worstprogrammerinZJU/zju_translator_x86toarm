	.text
	.p2align	4, 0x90                         # -- Begin function which_cmd
which_cmd:                              # @which_cmd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	CMD_PUT(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movl	CMD_PUT(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	-20(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	OP_PUT(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	CMD_PEEKJOB(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	CMD_PEEKJOB(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	OP_PEEKJOB(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movl	CMD_PEEK_READY(%rip), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	CMD_PEEK_READY(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-40(%rbp), %edi                 # 4-byte Reload
	movl	-36(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	OP_PEEK_READY(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	CMD_PEEK_DELAYED(%rip), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	CMD_PEEK_DELAYED(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	-44(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	OP_PEEK_DELAYED(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_8:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movl	CMD_PEEK_BURIED(%rip), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movl	CMD_PEEK_BURIED(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-56(%rbp), %edi                 # 4-byte Reload
	movl	-52(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	movl	OP_PEEK_BURIED(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_10:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movl	CMD_RESERVE_TIMEOUT(%rip), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	CMD_RESERVE_TIMEOUT(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-64(%rbp), %edi                 # 4-byte Reload
	movl	-60(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.11:
	movl	OP_RESERVE_TIMEOUT(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_12:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movl	CMD_RESERVE_JOB(%rip), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movl	CMD_RESERVE_JOB(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-72(%rbp), %edi                 # 4-byte Reload
	movl	-68(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_14
# %bb.13:
	movl	OP_RESERVE_JOB(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_14:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	CMD_RESERVE(%rip), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	CMD_RESERVE(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-80(%rbp), %edi                 # 4-byte Reload
	movl	-76(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.15:
	movl	OP_RESERVE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_16:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movl	CMD_DELETE(%rip), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movl	CMD_DELETE(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-88(%rbp), %edi                 # 4-byte Reload
	movl	-84(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_18
# %bb.17:
	movl	OP_DELETE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_18:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	movl	CMD_RELEASE(%rip), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	CMD_RELEASE(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-96(%rbp), %edi                 # 4-byte Reload
	movl	-92(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_20
# %bb.19:
	movl	OP_RELEASE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_20:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -104(%rbp)                # 4-byte Spill
	movl	CMD_BURY(%rip), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movl	CMD_BURY(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-104(%rbp), %edi                # 4-byte Reload
	movl	-100(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_22
# %bb.21:
	movl	OP_BURY(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_22:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	movl	CMD_KICK(%rip), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	movl	CMD_KICK(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-112(%rbp), %edi                # 4-byte Reload
	movl	-108(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_24
# %bb.23:
	movl	OP_KICK(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_24:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
	movl	CMD_KICKJOB(%rip), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	movl	CMD_KICKJOB(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-120(%rbp), %edi                # 4-byte Reload
	movl	-116(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_26
# %bb.25:
	movl	OP_KICKJOB(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_26:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -128(%rbp)                # 4-byte Spill
	movl	CMD_TOUCH(%rip), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	movl	CMD_TOUCH(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-128(%rbp), %edi                # 4-byte Reload
	movl	-124(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_28
# %bb.27:
	movl	OP_TOUCH(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_28:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -136(%rbp)                # 4-byte Spill
	movl	CMD_STATSJOB(%rip), %eax
	movl	%eax, -132(%rbp)                # 4-byte Spill
	movl	CMD_STATSJOB(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-136(%rbp), %edi                # 4-byte Reload
	movl	-132(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_30
# %bb.29:
	movl	OP_STATSJOB(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_30:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -144(%rbp)                # 4-byte Spill
	movl	CMD_STATS_TUBE(%rip), %eax
	movl	%eax, -140(%rbp)                # 4-byte Spill
	movl	CMD_STATS_TUBE(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-144(%rbp), %edi                # 4-byte Reload
	movl	-140(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_32
# %bb.31:
	movl	OP_STATS_TUBE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_32:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -152(%rbp)                # 4-byte Spill
	movl	CMD_STATS(%rip), %eax
	movl	%eax, -148(%rbp)                # 4-byte Spill
	movl	CMD_STATS(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-152(%rbp), %edi                # 4-byte Reload
	movl	-148(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_34
# %bb.33:
	movl	OP_STATS(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_34:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -160(%rbp)                # 4-byte Spill
	movl	CMD_USE(%rip), %eax
	movl	%eax, -156(%rbp)                # 4-byte Spill
	movl	CMD_USE(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-160(%rbp), %edi                # 4-byte Reload
	movl	-156(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_36
# %bb.35:
	movl	OP_USE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_36:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
	movl	CMD_WATCH(%rip), %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
	movl	CMD_WATCH(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-168(%rbp), %edi                # 4-byte Reload
	movl	-164(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_38
# %bb.37:
	movl	OP_WATCH(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_38:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -176(%rbp)                # 4-byte Spill
	movl	CMD_IGNORE(%rip), %eax
	movl	%eax, -172(%rbp)                # 4-byte Spill
	movl	CMD_IGNORE(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-176(%rbp), %edi                # 4-byte Reload
	movl	-172(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_40
# %bb.39:
	movl	OP_IGNORE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_40:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -184(%rbp)                # 4-byte Spill
	movl	CMD_LIST_TUBES_WATCHED(%rip), %eax
	movl	%eax, -180(%rbp)                # 4-byte Spill
	movl	CMD_LIST_TUBES_WATCHED(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-184(%rbp), %edi                # 4-byte Reload
	movl	-180(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_42
# %bb.41:
	movl	OP_LIST_TUBES_WATCHED(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_42:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
	movl	CMD_LIST_TUBE_USED(%rip), %eax
	movl	%eax, -188(%rbp)                # 4-byte Spill
	movl	CMD_LIST_TUBE_USED(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-192(%rbp), %edi                # 4-byte Reload
	movl	-188(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_44
# %bb.43:
	movl	OP_LIST_TUBE_USED(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_44:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -200(%rbp)                # 4-byte Spill
	movl	CMD_LIST_TUBES(%rip), %eax
	movl	%eax, -196(%rbp)                # 4-byte Spill
	movl	CMD_LIST_TUBES(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-200(%rbp), %edi                # 4-byte Reload
	movl	-196(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_46
# %bb.45:
	movl	OP_LIST_TUBES(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_46:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -208(%rbp)                # 4-byte Spill
	movl	CMD_QUIT(%rip), %eax
	movl	%eax, -204(%rbp)                # 4-byte Spill
	movl	CMD_QUIT(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-208(%rbp), %edi                # 4-byte Reload
	movl	-204(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_48
# %bb.47:
	movl	OP_QUIT(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_48:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -216(%rbp)                # 4-byte Spill
	movl	CMD_PAUSE_TUBE(%rip), %eax
	movl	%eax, -212(%rbp)                # 4-byte Spill
	movl	CMD_PAUSE_TUBE(%rip), %edi
	movb	$0, %al
	callq	CONSTSTRLEN@PLT
	movl	-216(%rbp), %edi                # 4-byte Reload
	movl	-212(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_50
# %bb.49:
	movl	OP_PAUSE_TUBE(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_51
.LBB0_50:
	movl	OP_UNKNOWN(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_51:
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CMD_PUT
	.p2align	2
CMD_PUT:
	.long	0                               # 0x0
	.globl	OP_PUT
	.p2align	2
OP_PUT:
	.long	0                               # 0x0
	.globl	CMD_PEEKJOB
	.p2align	2
CMD_PEEKJOB:
	.long	0                               # 0x0
	.globl	OP_PEEKJOB
	.p2align	2
OP_PEEKJOB:
	.long	0                               # 0x0
	.globl	CMD_PEEK_READY
	.p2align	2
CMD_PEEK_READY:
	.long	0                               # 0x0
	.globl	OP_PEEK_READY
	.p2align	2
OP_PEEK_READY:
	.long	0                               # 0x0
	.globl	CMD_PEEK_DELAYED
	.p2align	2
CMD_PEEK_DELAYED:
	.long	0                               # 0x0
	.globl	OP_PEEK_DELAYED
	.p2align	2
OP_PEEK_DELAYED:
	.long	0                               # 0x0
	.globl	CMD_PEEK_BURIED
	.p2align	2
CMD_PEEK_BURIED:
	.long	0                               # 0x0
	.globl	OP_PEEK_BURIED
	.p2align	2
OP_PEEK_BURIED:
	.long	0                               # 0x0
	.globl	CMD_RESERVE_TIMEOUT
	.p2align	2
CMD_RESERVE_TIMEOUT:
	.long	0                               # 0x0
	.globl	OP_RESERVE_TIMEOUT
	.p2align	2
OP_RESERVE_TIMEOUT:
	.long	0                               # 0x0
	.globl	CMD_RESERVE_JOB
	.p2align	2
CMD_RESERVE_JOB:
	.long	0                               # 0x0
	.globl	OP_RESERVE_JOB
	.p2align	2
OP_RESERVE_JOB:
	.long	0                               # 0x0
	.globl	CMD_RESERVE
	.p2align	2
CMD_RESERVE:
	.long	0                               # 0x0
	.globl	OP_RESERVE
	.p2align	2
OP_RESERVE:
	.long	0                               # 0x0
	.globl	CMD_DELETE
	.p2align	2
CMD_DELETE:
	.long	0                               # 0x0
	.globl	OP_DELETE
	.p2align	2
OP_DELETE:
	.long	0                               # 0x0
	.globl	CMD_RELEASE
	.p2align	2
CMD_RELEASE:
	.long	0                               # 0x0
	.globl	OP_RELEASE
	.p2align	2
OP_RELEASE:
	.long	0                               # 0x0
	.globl	CMD_BURY
	.p2align	2
CMD_BURY:
	.long	0                               # 0x0
	.globl	OP_BURY
	.p2align	2
OP_BURY:
	.long	0                               # 0x0
	.globl	CMD_KICK
	.p2align	2
CMD_KICK:
	.long	0                               # 0x0
	.globl	OP_KICK
	.p2align	2
OP_KICK:
	.long	0                               # 0x0
	.globl	CMD_KICKJOB
	.p2align	2
CMD_KICKJOB:
	.long	0                               # 0x0
	.globl	OP_KICKJOB
	.p2align	2
OP_KICKJOB:
	.long	0                               # 0x0
	.globl	CMD_TOUCH
	.p2align	2
CMD_TOUCH:
	.long	0                               # 0x0
	.globl	OP_TOUCH
	.p2align	2
OP_TOUCH:
	.long	0                               # 0x0
	.globl	CMD_STATSJOB
	.p2align	2
CMD_STATSJOB:
	.long	0                               # 0x0
	.globl	OP_STATSJOB
	.p2align	2
OP_STATSJOB:
	.long	0                               # 0x0
	.globl	CMD_STATS_TUBE
	.p2align	2
CMD_STATS_TUBE:
	.long	0                               # 0x0
	.globl	OP_STATS_TUBE
	.p2align	2
OP_STATS_TUBE:
	.long	0                               # 0x0
	.globl	CMD_STATS
	.p2align	2
CMD_STATS:
	.long	0                               # 0x0
	.globl	OP_STATS
	.p2align	2
OP_STATS:
	.long	0                               # 0x0
	.globl	CMD_USE
	.p2align	2
CMD_USE:
	.long	0                               # 0x0
	.globl	OP_USE
	.p2align	2
OP_USE:
	.long	0                               # 0x0
	.globl	CMD_WATCH
	.p2align	2
CMD_WATCH:
	.long	0                               # 0x0
	.globl	OP_WATCH
	.p2align	2
OP_WATCH:
	.long	0                               # 0x0
	.globl	CMD_IGNORE
	.p2align	2
CMD_IGNORE:
	.long	0                               # 0x0
	.globl	OP_IGNORE
	.p2align	2
OP_IGNORE:
	.long	0                               # 0x0
	.globl	CMD_LIST_TUBES_WATCHED
	.p2align	2
CMD_LIST_TUBES_WATCHED:
	.long	0                               # 0x0
	.globl	OP_LIST_TUBES_WATCHED
	.p2align	2
OP_LIST_TUBES_WATCHED:
	.long	0                               # 0x0
	.globl	CMD_LIST_TUBE_USED
	.p2align	2
CMD_LIST_TUBE_USED:
	.long	0                               # 0x0
	.globl	OP_LIST_TUBE_USED
	.p2align	2
OP_LIST_TUBE_USED:
	.long	0                               # 0x0
	.globl	CMD_LIST_TUBES
	.p2align	2
CMD_LIST_TUBES:
	.long	0                               # 0x0
	.globl	OP_LIST_TUBES
	.p2align	2
OP_LIST_TUBES:
	.long	0                               # 0x0
	.globl	CMD_QUIT
	.p2align	2
CMD_QUIT:
	.long	0                               # 0x0
	.globl	OP_QUIT
	.p2align	2
OP_QUIT:
	.long	0                               # 0x0
	.globl	CMD_PAUSE_TUBE
	.p2align	2
CMD_PAUSE_TUBE:
	.long	0                               # 0x0
	.globl	OP_PAUSE_TUBE
	.p2align	2
OP_PAUSE_TUBE:
	.long	0                               # 0x0
	.globl	OP_UNKNOWN
	.p2align	2
OP_UNKNOWN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym which_cmd
	.addrsig_sym strncmp
	.addrsig_sym CONSTSTRLEN
	.addrsig_sym CMD_PUT
	.addrsig_sym OP_PUT
	.addrsig_sym CMD_PEEKJOB
	.addrsig_sym OP_PEEKJOB
	.addrsig_sym CMD_PEEK_READY
	.addrsig_sym OP_PEEK_READY
	.addrsig_sym CMD_PEEK_DELAYED
	.addrsig_sym OP_PEEK_DELAYED
	.addrsig_sym CMD_PEEK_BURIED
	.addrsig_sym OP_PEEK_BURIED
	.addrsig_sym CMD_RESERVE_TIMEOUT
	.addrsig_sym OP_RESERVE_TIMEOUT
	.addrsig_sym CMD_RESERVE_JOB
	.addrsig_sym OP_RESERVE_JOB
	.addrsig_sym CMD_RESERVE
	.addrsig_sym OP_RESERVE
	.addrsig_sym CMD_DELETE
	.addrsig_sym OP_DELETE
	.addrsig_sym CMD_RELEASE
	.addrsig_sym OP_RELEASE
	.addrsig_sym CMD_BURY
	.addrsig_sym OP_BURY
	.addrsig_sym CMD_KICK
	.addrsig_sym OP_KICK
	.addrsig_sym CMD_KICKJOB
	.addrsig_sym OP_KICKJOB
	.addrsig_sym CMD_TOUCH
	.addrsig_sym OP_TOUCH
	.addrsig_sym CMD_STATSJOB
	.addrsig_sym OP_STATSJOB
	.addrsig_sym CMD_STATS_TUBE
	.addrsig_sym OP_STATS_TUBE
	.addrsig_sym CMD_STATS
	.addrsig_sym OP_STATS
	.addrsig_sym CMD_USE
	.addrsig_sym OP_USE
	.addrsig_sym CMD_WATCH
	.addrsig_sym OP_WATCH
	.addrsig_sym CMD_IGNORE
	.addrsig_sym OP_IGNORE
	.addrsig_sym CMD_LIST_TUBES_WATCHED
	.addrsig_sym OP_LIST_TUBES_WATCHED
	.addrsig_sym CMD_LIST_TUBE_USED
	.addrsig_sym OP_LIST_TUBE_USED
	.addrsig_sym CMD_LIST_TUBES
	.addrsig_sym OP_LIST_TUBES
	.addrsig_sym CMD_QUIT
	.addrsig_sym OP_QUIT
	.addrsig_sym CMD_PAUSE_TUBE
	.addrsig_sym OP_PAUSE_TUBE
	.addrsig_sym OP_UNKNOWN