	.text
	.globl	sigmaDeltaWrite                 # -- Begin function sigmaDeltaWrite
	.p2align	4, 0x90
sigmaDeltaWrite:                        # @sigmaDeltaWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$7, -4(%rbp)
	jle	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %eax
	subl	$128, %eax
	movl	%eax, -8(%rbp)
	movb	$0, %al
	callq	SD_MUTEX_LOCK@PLT
	movl	-8(%rbp), %edx
	movq	SIGMADELTA(%rip), %rax
	movslq	-4(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movb	$0, %al
	callq	SD_MUTEX_UNLOCK@PLT
.LBB0_3:
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