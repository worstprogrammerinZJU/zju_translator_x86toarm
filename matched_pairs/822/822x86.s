	.text
	.globl	spiTransferBits                 # -- Begin function spiTransferBits
	.p2align	4, 0x90
spiTransferBits:                        # @spiTransferBits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	spiTransferBitsNL@PLT
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym spiTransferBitsNL
	.addrsig_sym SPI_MUTEX_UNLOCK