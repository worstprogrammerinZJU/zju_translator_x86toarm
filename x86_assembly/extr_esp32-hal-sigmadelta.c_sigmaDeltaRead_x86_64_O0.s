	.text
	.globl	sigmaDeltaRead                  # -- Begin function sigmaDeltaRead
	.p2align	4, 0x90
sigmaDeltaRead:                         # @sigmaDeltaRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$7, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	SD_MUTEX_LOCK@PLT
	movq	SIGMADELTA(%rip), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	$128, %eax
	movl	%eax, -12(%rbp)
	movb	$0, %al
	callq	SD_MUTEX_UNLOCK@PLT
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SIGMADELTA
	.p2align	3
SIGMADELTA:
	.zero	8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SD_MUTEX_LOCK
	.addrsig_sym SD_MUTEX_UNLOCK
	.addrsig_sym SIGMADELTA