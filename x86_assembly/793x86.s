	.text
	.p2align	4, 0x90                         # -- Begin function _on_apb_change
_on_apb_change:                         # @_on_apb_change
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	APB_BEFORE_CHANGE(%rip), %rax
	jne	.LBB0_5
# %bb.1:
	movb	$0, %al
	callq	SPI_MUTEX_LOCK@PLT
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_4:
	jmp	.LBB0_6
.LBB0_5:
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx), %ecx
	addl	$1, %ecx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	4(%rdx), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edi
	callq	spiFrequencyToClockDiv@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 8(%rax)
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	APB_BEFORE_CHANGE
	.p2align	3
APB_BEFORE_CHANGE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _on_apb_change
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym spiFrequencyToClockDiv
	.addrsig_sym SPI_MUTEX_UNLOCK
	.addrsig_sym APB_BEFORE_CHANGE