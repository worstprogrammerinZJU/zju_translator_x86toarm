	.text
	.globl	enqueue_reserved_jobs           # -- Begin function enqueue_reserved_jobs
	.p2align	4, 0x90
enqueue_reserved_jobs:                  # @enqueue_reserved_jobs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	addq	$12, %rdi
	callq	job_list_is_empty@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_5
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	job_list_remove@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	enqueue_job@PLT
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jge	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	bury_job@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	global_stat(%rip), %eax
	addl	$-1, %eax
	movl	%eax, global_stat(%rip)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB0_1
.LBB0_5:
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym job_list_is_empty
	.addrsig_sym job_list_remove
	.addrsig_sym enqueue_job
	.addrsig_sym bury_job
	.addrsig_sym global_stat