	.text
	.globl	spiAttachSS                     # -- Begin function spiAttachSS
	.p2align	4, 0x90
spiAttachSS:                            # @spiAttachSS
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_13
.LBB0_2:
	cmpl	$2, -12(%rbp)
	jle	.LBB0_4
# %bb.3:
	jmp	.LBB0_13
.LBB0_4:
	cmpl	$0, -16(%rbp)
	jge	.LBB0_12
# %bb.5:
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	HSPI(%rip), %rax
	jne	.LBB0_7
# %bb.6:
	movl	$15, -16(%rbp)
	jmp	.LBB0_11
.LBB0_7:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	VSPI(%rip), %rax
	jne	.LBB0_9
# %bb.8:
	movl	$5, -16(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	$11, -16(%rbp)
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movl	-16(%rbp), %edi
	movl	OUTPUT(%rip), %esi
	callq	pinMode@PLT
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	SPI_SS_IDX@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	pinMatrixOutAttach@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movl	$1, %esi
                                        # kill: def $cl killed $ecx
	shll	%cl, %esi
	callq	spiEnableSSPins@PLT
.LBB0_13:
	addq	$32, %rsp
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
	.addrsig_sym SPI_SS_IDX
	.addrsig_sym spiEnableSSPins
	.addrsig_sym HSPI
	.addrsig_sym VSPI
	.addrsig_sym OUTPUT