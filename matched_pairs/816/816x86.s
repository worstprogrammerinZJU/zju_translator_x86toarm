	.text
	.globl	spiSetDataMode                  # -- Begin function spiSetDataMode
	.p2align	4, 0x90
spiSetDataMode:                         # @spiSetDataMode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_9
.LBB0_2:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	SPI_MUTEX_LOCK@PLT
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_7
# %bb.10:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	jmp	.LBB0_8
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	jmp	.LBB0_8
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	jmp	.LBB0_8
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
.LBB0_8:
	movb	$0, %al
	callq	SPI_MUTEX_UNLOCK@PLT
.LBB0_9:
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MUTEX_LOCK
	.addrsig_sym SPI_MUTEX_UNLOCK