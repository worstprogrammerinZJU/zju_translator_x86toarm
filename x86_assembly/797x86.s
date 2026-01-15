	.text
	.globl	spiAttachSCK                    # -- Begin function spiAttachSCK
	.p2align	4, 0x90
spiAttachSCK:                           # @spiAttachSCK
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_11
.LBB0_2:
	cmpl	$0, -12(%rbp)
	jge	.LBB0_10
# %bb.3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	HSPI(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movl	$14, -12(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	VSPI(%rip), %rax
	jne	.LBB0_7
# %bb.6:
	movl	$18, -12(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movl	$6, -12(%rbp)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movl	-12(%rbp), %edi
	movl	OUTPUT(%rip), %esi
	callq	pinMode@PLT
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	SPI_CLK_IDX@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	pinMatrixOutAttach@PLT
.LBB0_11:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	HSPI
	.p2align	3
HSPI:
	.quad	0                               # 0x0
	.globl	VSPI
	.p2align	3
VSPI:
	.quad	0                               # 0x0
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym SPI_CLK_IDX
	.addrsig_sym HSPI
	.addrsig_sym VSPI
	.addrsig_sym OUTPUT