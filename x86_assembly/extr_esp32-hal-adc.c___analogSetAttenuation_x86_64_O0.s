	.text
	.globl	__analogSetAttenuation          # -- Begin function __analogSetAttenuation
	.p2align	4, 0x90
__analogSetAttenuation:                 # @__analogSetAttenuation
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$3, %eax
	movl	%eax, __analogAttenuation(%rip)
	movl	$0, -8(%rbp)
	movl	$10, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	__analogAttenuation(%rip), %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	orl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	SENS_SAR_ATTEN1_REG(%rip), %edi
	movl	-8(%rbp), %esi
	andl	$65535, %esi                    # imm = 0xFFFF
	callq	WRITE_PERI_REG@PLT
	movl	SENS_SAR_ATTEN2_REG(%rip), %edi
	movl	-8(%rbp), %esi
	callq	WRITE_PERI_REG@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	__analogAttenuation
	.p2align	2
__analogAttenuation:
	.long	0                               # 0x0
	.globl	SENS_SAR_ATTEN1_REG
	.p2align	2
SENS_SAR_ATTEN1_REG:
	.long	0                               # 0x0
	.globl	SENS_SAR_ATTEN2_REG
	.p2align	2
SENS_SAR_ATTEN2_REG:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym WRITE_PERI_REG
	.addrsig_sym __analogAttenuation
	.addrsig_sym SENS_SAR_ATTEN1_REG
	.addrsig_sym SENS_SAR_ATTEN2_REG