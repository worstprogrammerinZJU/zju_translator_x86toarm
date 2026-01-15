	.text
	.globl	spiWriteLong                    # -- Begin function spiWriteLong
	.p2align	4, 0x90
spiWriteLong:                           # @spiWriteLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_8
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %edi
	callq	__spiTranslate32@PLT
	movl	%eax, -12(%rbp)
.LBB0_4:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$31, 24(%rax)
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
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_5
.LBB0_7:
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_8:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __spiTranslate32
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK