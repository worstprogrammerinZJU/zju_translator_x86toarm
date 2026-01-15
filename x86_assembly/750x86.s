	.text
	.globl	__analogSetCycles               # -- Begin function __analogSetCycles
	.p2align	4, 0x90
__analogSetCycles:                      # @__analogSetCycles
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, __analogCycles(%rip)
	movl	SENS_SAR_READ_CTRL_REG(%rip), %edi
	movl	SENS_SAR1_SAMPLE_CYCLE(%rip), %esi
	movl	__analogCycles(%rip), %edx
	movl	SENS_SAR1_SAMPLE_CYCLE_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	movl	SENS_SAR_READ_CTRL2_REG(%rip), %edi
	movl	SENS_SAR2_SAMPLE_CYCLE(%rip), %esi
	movl	__analogCycles(%rip), %edx
	movl	SENS_SAR2_SAMPLE_CYCLE_S(%rip), %ecx
	callq	SET_PERI_REG_BITS@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	__analogCycles
	.p2align	2
__analogCycles:
	.long	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL_REG
	.p2align	2
SENS_SAR_READ_CTRL_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR1_SAMPLE_CYCLE
	.p2align	2
SENS_SAR1_SAMPLE_CYCLE:
	.long	0                               # 0x0
	.globl	SENS_SAR1_SAMPLE_CYCLE_S
	.p2align	2
SENS_SAR1_SAMPLE_CYCLE_S:
	.long	0                               # 0x0
	.globl	SENS_SAR_READ_CTRL2_REG
	.p2align	2
SENS_SAR_READ_CTRL2_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR2_SAMPLE_CYCLE
	.p2align	2
SENS_SAR2_SAMPLE_CYCLE:
	.long	0                               # 0x0
	.globl	SENS_SAR2_SAMPLE_CYCLE_S
	.p2align	2
SENS_SAR2_SAMPLE_CYCLE_S:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SET_PERI_REG_BITS
	.addrsig_sym __analogCycles
	.addrsig_sym SENS_SAR_READ_CTRL_REG
	.addrsig_sym SENS_SAR1_SAMPLE_CYCLE
	.addrsig_sym SENS_SAR1_SAMPLE_CYCLE_S
	.addrsig_sym SENS_SAR_READ_CTRL2_REG
	.addrsig_sym SENS_SAR2_SAMPLE_CYCLE
	.addrsig_sym SENS_SAR2_SAMPLE_CYCLE_S