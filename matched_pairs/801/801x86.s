	.text
	.globl	spiDetachSS                     # -- Begin function spiDetachSS
	.p2align	4, 0x90
spiDetachSS:                            # @spiDetachSS
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
	movl	$15, -12(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	VSPI(%rip), %rax
	jne	.LBB0_7
# %bb.6:
	movl	$5, -12(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movl	$11, -12(%rbp)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movl	-12(%rbp), %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	callq	pinMatrixOutDetach@PLT
	movl	-12(%rbp), %edi
	movl	INPUT(%rip), %esi
	callq	pinMode@PLT
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
	.globl	INPUT
	.p2align	2
INPUT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMatrixOutDetach
	.addrsig_sym pinMode
	.addrsig_sym HSPI
	.addrsig_sym VSPI
	.addrsig_sym INPUT