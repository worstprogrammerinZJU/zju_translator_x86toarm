	.text
	.globl	spiTransferWord                 # -- Begin function spiTransferWord
	.p2align	4, 0x90
spiTransferWord:                        # @spiTransferWord
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
	jmp	.LBB0_10
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movl	-20(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -20(%rbp)
.LBB0_4:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$15, 20(%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 16(%rax)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_5
.LBB0_7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_9
# %bb.8:
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movl	-20(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -20(%rbp)
.LBB0_9:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_10:
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