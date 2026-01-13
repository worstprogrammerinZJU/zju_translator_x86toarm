	.text
	.globl	spiTransaction                  # -- Begin function spiTransaction
	.p2align	4, 0x90
spiTransaction:                         # @spiTransaction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_13
.LBB0_2:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	SPI_MUTEX_LOCK@PLT
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 16(%rax)
	movl	-16(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_7
# %bb.14:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_8
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_8
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
	jmp	.LBB0_8
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
.LBB0_8:
	movl	SPI_MSBFIRST(%rip), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 4(%rax)
	jmp	.LBB0_13
.LBB0_10:
	movl	SPI_LSBFIRST(%rip), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_12
# %bb.11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 4(%rax)
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
                                        # -- End function
	.bss
	.globl	SPI_MSBFIRST
	.p2align	2
SPI_MSBFIRST:
	.long	0                               # 0x0
	.globl	SPI_LSBFIRST
	.p2align	2
SPI_LSBFIRST:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MSBFIRST
	.addrsig_sym SPI_LSBFIRST