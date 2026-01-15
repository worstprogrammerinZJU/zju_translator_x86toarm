	.text
	.globl	spiTransferByte                 # -- Begin function spiTransferByte
	.p2align	4, 0x90
spiTransferByte:                        # @spiTransferByte
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$7, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$7, 12(%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 8(%rax)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$255, %eax
	movl	%eax, -20(%rbp)
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK