	.text
	.globl	__analogSetClockDiv             # -- Begin function __analogSetClockDiv
	.p2align	4, 0x90
__analogSetClockDiv:                    # @__analogSetClockDiv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	%rax, __analogClockDiv(%rip)
	movl	SENS_SAR_READ_CTRL_REG(%rip), %edi
	movl	SENS_SAR1_CLK_DIV(%rip), %esi
	movq	__analogClockDiv(%rip), %rdx
	movl	SENS_SAR1_CLK_DIV_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	movl	SENS_SAR_READ_CTRL2_REG(%rip), %edi
	movl	SENS_SAR2_CLK_DIV(%rip), %esi
	movq	__analogClockDiv(%rip), %rdx
	movl	SENS_SAR2_CLK_DIV_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	__analogClockDiv
	.p2align	3
__analogClockDiv:
	.quad	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR1_CLK_DIV
	.p2align	2
SENS_SAR1_CLK_DIV:
	.long	0                               # 0x0
	.globl	SENS_SAR1_CLK_DIV_S
	.p2align	2
SENS_SAR1_CLK_DIV_S:
	.long	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR2_CLK_DIV
	.p2align	2
SENS_SAR2_CLK_DIV:
	.long	0                               # 0x0
	.globl	SENS_SAR2_CLK_DIV_S
	.p2align	2
SENS_SAR2_CLK_DIV_S:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogClockDiv
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_CLK_DIV
	.addrsig_sym SENS_SAR1_CLK_DIV_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_CLK_DIV
	.addrsig_sym SENS_SAR2_CLK_DIV_S