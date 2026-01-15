	.text
	.globl	decNumberClassToString          # -- Begin function decNumberClassToString
	.p2align	4, 0x90
decNumberClassToString:                 # @decNumberClassToString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_POS_NORMAL(%rip), %eax
	jne	.LBB0_2
# %bb.1:
	movq	DEC_ClassString_PN(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_2:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_NEG_NORMAL(%rip), %eax
	jne	.LBB0_4
# %bb.3:
	movq	DEC_ClassString_NN(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_4:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_POS_ZERO(%rip), %eax
	jne	.LBB0_6
# %bb.5:
	movq	DEC_ClassString_PZ(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_6:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_NEG_ZERO(%rip), %eax
	jne	.LBB0_8
# %bb.7:
	movq	DEC_ClassString_NZ(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_8:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_POS_SUBNORMAL(%rip), %eax
	jne	.LBB0_10
# %bb.9:
	movq	DEC_ClassString_PS(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_10:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_NEG_SUBNORMAL(%rip), %eax
	jne	.LBB0_12
# %bb.11:
	movq	DEC_ClassString_NS(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_12:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_POS_INF(%rip), %eax
	jne	.LBB0_14
# %bb.13:
	movq	DEC_ClassString_PI(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_14:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_NEG_INF(%rip), %eax
	jne	.LBB0_16
# %bb.15:
	movq	DEC_ClassString_NI(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_16:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_QNAN(%rip), %eax
	jne	.LBB0_18
# %bb.17:
	movq	DEC_ClassString_QN(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_18:
	movl	-12(%rbp), %eax
	cmpl	DEC_CLASS_SNAN(%rip), %eax
	jne	.LBB0_20
# %bb.19:
	movq	DEC_ClassString_SN(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_21
.LBB0_20:
	movq	DEC_ClassString_UN(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_21:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_CLASS_POS_NORMAL
	.p2align	2
DEC_CLASS_POS_NORMAL:
	.long	0                               # 0x0
	.globl	DEC_ClassString_PN
	.p2align	3
DEC_ClassString_PN:
	.quad	0
	.globl	DEC_CLASS_NEG_NORMAL
	.p2align	2
DEC_CLASS_NEG_NORMAL:
	.long	0                               # 0x0
	.globl	DEC_ClassString_NN
	.p2align	3
DEC_ClassString_NN:
	.quad	0
	.globl	DEC_CLASS_POS_ZERO
	.p2align	2
DEC_CLASS_POS_ZERO:
	.long	0                               # 0x0
	.globl	DEC_ClassString_PZ
	.p2align	3
DEC_ClassString_PZ:
	.quad	0
	.globl	DEC_CLASS_NEG_ZERO
	.p2align	2
DEC_CLASS_NEG_ZERO:
	.long	0                               # 0x0
	.globl	DEC_ClassString_NZ
	.p2align	3
DEC_ClassString_NZ:
	.quad	0
	.globl	DEC_CLASS_POS_SUBNORMAL
	.p2align	2
DEC_CLASS_POS_SUBNORMAL:
	.long	0                               # 0x0
	.globl	DEC_ClassString_PS
	.p2align	3
DEC_ClassString_PS:
	.quad	0
	.globl	DEC_CLASS_NEG_SUBNORMAL
	.p2align	2
DEC_CLASS_NEG_SUBNORMAL:
	.long	0                               # 0x0
	.globl	DEC_ClassString_NS
	.p2align	3
DEC_ClassString_NS:
	.quad	0
	.globl	DEC_CLASS_POS_INF
	.p2align	2
DEC_CLASS_POS_INF:
	.long	0                               # 0x0
	.globl	DEC_ClassString_PI
	.p2align	3
DEC_ClassString_PI:
	.quad	0
	.globl	DEC_CLASS_NEG_INF
	.p2align	2
DEC_CLASS_NEG_INF:
	.long	0                               # 0x0
	.globl	DEC_ClassString_NI
	.p2align	3
DEC_ClassString_NI:
	.quad	0
	.globl	DEC_CLASS_QNAN
	.p2align	2
DEC_CLASS_QNAN:
	.long	0                               # 0x0
	.globl	DEC_ClassString_QN
	.p2align	3
DEC_ClassString_QN:
	.quad	0
	.globl	DEC_CLASS_SNAN
	.p2align	2
DEC_CLASS_SNAN:
	.long	0                               # 0x0
	.globl	DEC_ClassString_SN
	.p2align	3
DEC_ClassString_SN:
	.quad	0
	.globl	DEC_ClassString_UN
	.p2align	3
DEC_ClassString_UN:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DEC_CLASS_POS_NORMAL
	.addrsig_sym DEC_ClassString_PN
	.addrsig_sym DEC_CLASS_NEG_NORMAL
	.addrsig_sym DEC_ClassString_NN
	.addrsig_sym DEC_CLASS_POS_ZERO
	.addrsig_sym DEC_ClassString_PZ
	.addrsig_sym DEC_CLASS_NEG_ZERO
	.addrsig_sym DEC_ClassString_NZ
	.addrsig_sym DEC_CLASS_POS_SUBNORMAL
	.addrsig_sym DEC_ClassString_PS
	.addrsig_sym DEC_CLASS_NEG_SUBNORMAL
	.addrsig_sym DEC_ClassString_NS
	.addrsig_sym DEC_CLASS_POS_INF
	.addrsig_sym DEC_ClassString_PI
	.addrsig_sym DEC_CLASS_NEG_INF
	.addrsig_sym DEC_ClassString_NI
	.addrsig_sym DEC_CLASS_QNAN
	.addrsig_sym DEC_ClassString_QN
	.addrsig_sym DEC_CLASS_SNAN
	.addrsig_sym DEC_ClassString_SN
	.addrsig_sym DEC_ClassString_UN