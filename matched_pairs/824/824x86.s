	.text
	.globl	spiTransferBytes                # -- Begin function spiTransferBytes
	.p2align	4, 0x90
spiTransferBytes:                       # @spiTransferBytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_13
.LBB0_2:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB0_12
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$64, -28(%rbp)
	jle	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	$64, %ecx
	callq	__spiTransferBytes@PLT
	movl	-28(%rbp), %eax
	subl	$64, %eax
	movl	%eax, -28(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	movq	%rax, -16(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$256, %rax                      # imm = 0x100
	movq	%rax, -24(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	__spiTransferBytes@PLT
	movl	$0, -28(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_12:
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_13:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym __spiTransferBytes
	.addrsig_sym SPI_MUTEX_UNLOCK