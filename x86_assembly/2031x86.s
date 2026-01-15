	.text
	.p2align	4, 0x90                         # -- Begin function enqueue_job
enqueue_job:                            # @enqueue_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	%al, -33(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# %bb.1:
	movb	$0, %al
	callq	nanoseconds@PLT
	movq	%rax, %rcx
	addq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	addq	$8, %rdi
	movq	-24(%rbp), %rsi
	callq	heapinsert@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_14
.LBB0_3:
	movl	Delayed(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	jmp	.LBB0_9
.LBB0_4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	addq	$4, %rdi
	movq	-24(%rbp), %rsi
	callq	heapinsert@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_14
.LBB0_6:
	movl	Ready(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	ready_ct(%rip), %eax
	addl	$1, %eax
	movl	%eax, ready_ct(%rip)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	URGENT_THRESHOLD(%rip), %rax
	jge	.LBB0_8
# %bb.7:
	movl	global_stat(%rip), %eax
	addl	$1, %eax
	movl	%eax, global_stat(%rip)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	cmpb	$0, -33(%rbp)
	je	.LBB0_13
# %bb.10:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	walwrite@PLT
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.11:
	movl	$0, -4(%rbp)
	jmp	.LBB0_14
.LBB0_12:
	movq	-16(%rbp), %rdi
	callq	walmaint@PLT
.LBB0_13:
	movb	$0, %al
	callq	process_queue@PLT
	movl	$1, -4(%rbp)
.LBB0_14:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Delayed
	.p2align	2
Delayed:
	.long	0                               # 0x0
	.globl	Ready
	.p2align	2
Ready:
	.long	0                               # 0x0
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
	.addrsig_sym enqueue_job
	.addrsig_sym nanoseconds
	.addrsig_sym heapinsert
	.addrsig_sym walwrite
	.addrsig_sym walmaint
	.addrsig_sym process_queue
	.addrsig_sym Delayed
	.addrsig_sym Ready
	.addrsig_sym ready_ct
	.addrsig_sym URGENT_THRESHOLD
	.addrsig_sym global_stat