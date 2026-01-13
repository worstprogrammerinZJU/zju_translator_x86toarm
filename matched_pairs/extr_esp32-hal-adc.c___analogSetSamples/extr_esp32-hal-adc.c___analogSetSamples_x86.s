	.text
	.globl	__analogSetSamples              # -- Begin function __analogSetSamples
	.p2align	4, 0x90
__analogSetSamples:                     # @__analogSetSamples
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
	subq	$1, %rax
	movq	%rax, __analogSamples(%rip)
	movl	SENS_SAR_READ_CTRL_REG(%rip), %edi
	movl	SENS_SAR1_SAMPLE_NUM(%rip), %esi
	movq	__analogSamples(%rip), %rdx
	movl	SENS_SAR1_SAMPLE_NUM_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	movl	SENS_SAR_READ_CTRL2_REG(%rip), %edi
	movl	SENS_SAR2_SAMPLE_NUM(%rip), %esi
	movq	__analogSamples(%rip), %rdx
	movl	SENS_SAR2_SAMPLE_NUM_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	__analogSamples
	.p2align	3
__analogSamples:
	.quad	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR1_SAMPLE_NUM
	.p2align	2
SENS_SAR1_SAMPLE_NUM:
	.long	0                               # 0x0
	.globl	SENS_SAR1_SAMPLE_NUM_S
	.p2align	2
SENS_SAR1_SAMPLE_NUM_S:
	.long	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR2_SAMPLE_NUM
	.p2align	2
SENS_SAR2_SAMPLE_NUM:
	.long	0                               # 0x0
	.globl	SENS_SAR2_SAMPLE_NUM_S
	.p2align	2
SENS_SAR2_SAMPLE_NUM_S:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogSamples
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_SAMPLE_NUM
	.addrsig_sym SENS_SAR1_SAMPLE_NUM_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_SAMPLE_NUM
	.addrsig_sym SENS_SAR2_SAMPLE_NUM_S