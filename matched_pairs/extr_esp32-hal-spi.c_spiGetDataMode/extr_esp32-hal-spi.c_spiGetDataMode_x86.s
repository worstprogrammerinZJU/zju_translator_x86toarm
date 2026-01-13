	.text
	.globl	spiGetDataMode                  # -- Begin function spiGetDataMode
	.p2align	4, 0x90
spiGetDataMode:                         # @spiGetDataMode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_6
# %bb.3:
	cmpl	$0, -24(%rbp)
	je	.LBB0_5
# %bb.4:
	movl	SPI_MODE2(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	movl	SPI_MODE3(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	cmpl	$0, -24(%rbp)
	je	.LBB0_8
# %bb.7:
	movl	SPI_MODE1(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	SPI_MODE0(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SPI_MODE2
	.p2align	2
SPI_MODE2:
	.long	0                               # 0x0
	.globl	SPI_MODE3
	.p2align	2
SPI_MODE3:
	.long	0                               # 0x0
	.globl	SPI_MODE1
	.p2align	2
SPI_MODE1:
	.long	0                               # 0x0
	.globl	SPI_MODE0
	.p2align	2
SPI_MODE0:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SPI_MODE2
	.addrsig_sym SPI_MODE3
	.addrsig_sym SPI_MODE1
	.addrsig_sym SPI_MODE0