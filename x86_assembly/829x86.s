	.text
	.globl	spiWriteByte                    # -- Begin function spiWriteByte
	.p2align	4, 0x90
spiWriteByte:                           # @spiWriteByte
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_6
.LBB0_2:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$7, 24(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 16(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_5:
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK