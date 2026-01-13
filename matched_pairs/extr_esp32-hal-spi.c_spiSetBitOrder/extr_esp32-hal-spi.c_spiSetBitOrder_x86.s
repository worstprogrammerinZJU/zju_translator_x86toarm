	.text
	.globl	spiSetBitOrder                  # -- Begin function spiSetBitOrder
	.p2align	4, 0x90
spiSetBitOrder:                         # @spiSetBitOrder
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_8
.LBB0_2:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movq	SPI_MSBFIRST(%rip), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 4(%rax)
	jmp	.LBB0_7
.LBB0_4:
	movq	SPI_LSBFIRST(%rip), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 4(%rax)
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_8:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SPI_MSBFIRST
	.p2align	3
SPI_MSBFIRST:
	.quad	0                               # 0x0
	.globl	SPI_LSBFIRST
	.p2align	3
SPI_LSBFIRST:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym SPI_MSBFIRST
	.addrsig_sym SPI_LSBFIRST