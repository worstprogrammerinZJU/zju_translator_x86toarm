	.text
	.globl	__analogSetWidth                # -- Begin function __analogSetWidth
	.p2align	4, 0x90
__analogSetWidth:                       # @__analogSetWidth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$9, -4(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	$9, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	cmpl	$12, -4(%rbp)
	jle	.LBB0_4
# %bb.3:
	movl	$12, -4(%rbp)
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	movl	-4(%rbp), %eax
	movl	%eax, __analogReturnedWidth(%rip)
	movl	-4(%rbp), %eax
	subl	$9, %eax
	movl	%eax, __analogWidth(%rip)
	movl	SENS_SAR_START_FORCE_REG(%rip), %edi
	movl	SENS_SAR1_BIT_WIDTH(%rip), %esi
	movl	__analogWidth(%rip), %edx
	movl	SENS_SAR1_BIT_WIDTH_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	movl	SENS_SAR_READ_CTRL_REG(%rip), %edi
	movl	SENS_SAR1_SAMPLE_BIT(%rip), %esi
	movl	__analogWidth(%rip), %edx
	movl	SENS_SAR1_SAMPLE_BIT_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	movl	SENS_SAR_START_FORCE_REG(%rip), %edi
	movl	SENS_SAR2_BIT_WIDTH(%rip), %esi
	movl	__analogWidth(%rip), %edx
	movl	SENS_SAR2_BIT_WIDTH_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	movl	SENS_SAR_READ_CTRL2_REG(%rip), %edi
	movl	SENS_SAR2_SAMPLE_BIT(%rip), %esi
	movl	__analogWidth(%rip), %edx
	movl	SENS_SAR2_SAMPLE_BIT_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	__analogReturnedWidth
	.p2align	2
__analogReturnedWidth:
	.long	0                               # 0x0
	.globl	__analogWidth
	.p2align	2
__analogWidth:
	.long	0                               # 0x0
	.globl	SENS_SAR_START_FORCE_REG
	.p2align	2
SENS_SAR_START_FORCE_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR1_BIT_WIDTH
	.p2align	2
SENS_SAR1_BIT_WIDTH:
	.long	0                               # 0x0
	.globl	SENS_SAR1_BIT_WIDTH_S
	.p2align	2
SENS_SAR1_BIT_WIDTH_S:
	.long	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR1_SAMPLE_BIT
	.p2align	2
SENS_SAR1_SAMPLE_BIT:
	.long	0                               # 0x0
	.globl	SENS_SAR1_SAMPLE_BIT_S
	.p2align	2
SENS_SAR1_SAMPLE_BIT_S:
	.long	0                               # 0x0
	.globl	SENS_SAR2_BIT_WIDTH
	.p2align	2
SENS_SAR2_BIT_WIDTH:
	.long	0                               # 0x0
	.globl	SENS_SAR2_BIT_WIDTH_S
	.p2align	2
SENS_SAR2_BIT_WIDTH_S:
	.long	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR2_SAMPLE_BIT
	.p2align	2
SENS_SAR2_SAMPLE_BIT:
	.long	0                               # 0x0
	.globl	SENS_SAR2_SAMPLE_BIT_S
	.p2align	2
SENS_SAR2_SAMPLE_BIT_S:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogReturnedWidth
	.addrsig_sym __analogWidth
	.addrsig_sym SENS_SAR_START_FORCE_REG
	.addrsig_sym SENS_SAR1_BIT_WIDTH
	.addrsig_sym SENS_SAR1_BIT_WIDTH_S
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_SAMPLE_BIT
	.addrsig_sym SENS_SAR1_SAMPLE_BIT_S
	.addrsig_sym SENS_SAR2_BIT_WIDTH
	.addrsig_sym SENS_SAR2_BIT_WIDTH_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_SAMPLE_BIT
	.addrsig_sym SENS_SAR2_SAMPLE_BIT_S