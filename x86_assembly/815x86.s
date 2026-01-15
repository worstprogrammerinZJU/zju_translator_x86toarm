	.text
	.globl	spiSetClockDiv                  # -- Begin function spiSetClockDiv
	.p2align	4, 0x90
spiSetClockDiv:                         # @spiSetClockDiv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, (%rax)
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK