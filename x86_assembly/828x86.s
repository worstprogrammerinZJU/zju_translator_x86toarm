	.text
	.globl	spiWrite                        # -- Begin function spiWrite
	.p2align	4, 0x90
spiWrite:                               # @spiWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_12
.LBB0_2:
	cmpl	$16, -20(%rbp)
	jle	.LBB0_4
# %bb.3:
	movl	$16, -20(%rbp)
.LBB0_4:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
	movl	-20(%rbp), %ecx
	shll	$5, %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 16(%rax)
	movl	$0, -24(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_9
.LBB0_11:
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_12:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK