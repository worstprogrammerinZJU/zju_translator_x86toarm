	.text
	.p2align	4, 0x90                         # -- Begin function bury_job
bury_job:                               # @bury_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	%al, -25(%rbp)
	cmpb	$0, -25(%rbp)
	je	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	walresvupdate@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_3:
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_4:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	addq	$4, %rdi
	movq	-24(%rbp), %rsi
	callq	job_list_insert@PLT
	movl	global_stat(%rip), %eax
	addl	$1, %eax
	movl	%eax, global_stat(%rip)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	Buried(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	cmpb	$0, -25(%rbp)
	je	.LBB0_8
# %bb.5:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	walwrite@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_7:
	movq	-16(%rbp), %rdi
	callq	walmaint@PLT
.LBB0_8:
	movl	$1, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.globl	Buried
	.p2align	2
Buried:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bury_job
	.addrsig_sym walresvupdate
	.addrsig_sym job_list_insert
	.addrsig_sym walwrite
	.addrsig_sym walmaint
	.addrsig_sym global_stat
	.addrsig_sym Buried