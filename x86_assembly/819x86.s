	.text
	.globl	spiStopBus                      # -- Begin function spiStopBus
	.p2align	4, 0x90
spiStopBus:                             # @spiStopBus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
	movq	-8(%rbp), %rdi
	movl	_on_apb_change(%rip), %esi
	callq	removeApbChangeCallback@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	_on_apb_change
	.p2align	2
_on_apb_change:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym removeApbChangeCallback
	.addrsig_sym _on_apb_change