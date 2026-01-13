	.text
	.globl	decCompareOp                    # -- Begin function decCompareOp
	.p2align	4, 0x90
decCompareOp:                           # @decCompareOp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -52(%rbp)
# %bb.1:
	movq	-40(%rbp), %rax
	cmpq	COMPTOTAL(%rip), %rax
	jne	.LBB0_7
# %bb.2:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	movl	%eax, %ecx
	movl	-84(%rbp), %eax                 # 4-byte Reload
	cmpl	$0, %ecx
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	movl	$-1, -52(%rbp)
	jmp	.LBB0_48
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	movl	%eax, %ecx
	movl	-88(%rbp), %eax                 # 4-byte Reload
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movl	$1, -52(%rbp)
	jmp	.LBB0_48
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-24(%rbp), %rcx
	orl	8(%rcx), %eax
	movl	DECSNAN(%rip), %ecx
	orl	DECNAN(%rip), %ecx
	andl	%ecx, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_43
# %bb.8:
	movq	-40(%rbp), %rax
	cmpq	COMPARE(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	jmp	.LBB0_42
.LBB0_10:
	movq	-40(%rbp), %rax
	cmpq	COMPSIG(%rip), %rax
	jne	.LBB0_12
# %bb.11:
	movl	DEC_Invalid_operation(%rip), %ecx
	orl	DEC_sNaN(%rip), %ecx
	movq	-48(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_41
.LBB0_12:
	movq	-40(%rbp), %rax
	cmpq	COMPTOTAL(%rip), %rax
	jne	.LBB0_30
# %bb.13:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpl	$0, %eax
	jne	.LBB0_15
# %bb.14:
	movl	$-1, -52(%rbp)
	jmp	.LBB0_27
.LBB0_15:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpl	$0, %eax
	jne	.LBB0_17
# %bb.16:
	movl	$1, -52(%rbp)
	jmp	.LBB0_26
.LBB0_17:
	movq	-16(%rbp), %rdi
	callq	decNumberIsSNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_20
# %bb.18:
	movq	-24(%rbp), %rdi
	callq	decNumberIsQNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_20
# %bb.19:
	movl	$-1, -52(%rbp)
	jmp	.LBB0_25
.LBB0_20:
	movq	-16(%rbp), %rdi
	callq	decNumberIsQNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_23
# %bb.21:
	movq	-24(%rbp), %rdi
	callq	decNumberIsSNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_23
# %bb.22:
	movl	$1, -52(%rbp)
	jmp	.LBB0_24
.LBB0_23:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	D2U@PLT
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	D2U@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movl	-100(%rbp), %esi                # 4-byte Reload
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	callq	decUnitCompare@PLT
	movl	%eax, -52(%rbp)
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	jmp	.LBB0_27
.LBB0_27:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpl	$0, %eax
	je	.LBB0_29
# %bb.28:
	xorl	%eax, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_29:
	jmp	.LBB0_48
.LBB0_30:
	movl	-56(%rbp), %eax
	andl	DECSNAN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_32
# %bb.31:
	jmp	.LBB0_39
.LBB0_32:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpl	$0, %eax
	je	.LBB0_34
# %bb.33:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpl	$0, %eax
	jne	.LBB0_38
.LBB0_34:
	movq	COMPMAX(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	DECNAN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_36
# %bb.35:
	movl	$-1, -52(%rbp)
	jmp	.LBB0_37
.LBB0_36:
	movl	$1, -52(%rbp)
.LBB0_37:
	jmp	.LBB0_48
.LBB0_38:
	jmp	.LBB0_39
.LBB0_39:
	jmp	.LBB0_40
.LBB0_40:
	jmp	.LBB0_41
.LBB0_41:
	jmp	.LBB0_42
.LBB0_42:
	movq	COMPNAN(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	decNaNs@PLT
	jmp	.LBB0_48
.LBB0_43:
	movq	-40(%rbp), %rax
	cmpq	COMPMAXMAG(%rip), %rax
	je	.LBB0_45
# %bb.44:
	movq	-40(%rbp), %rax
	cmpq	COMPMINMAG(%rip), %rax
	jne	.LBB0_46
.LBB0_45:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	$1, %edx
	callq	decCompare@PLT
	movl	%eax, -52(%rbp)
	jmp	.LBB0_47
.LBB0_46:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	xorl	%edx, %edx
	callq	decCompare@PLT
	movl	%eax, -52(%rbp)
.LBB0_47:
	jmp	.LBB0_48
.LBB0_48:
	movl	-52(%rbp), %eax
	cmpl	BADINT(%rip), %eax
	jne	.LBB0_50
# %bb.49:
	movl	DEC_Insufficient_storage(%rip), %ecx
	movq	-48(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_97
.LBB0_50:
	movq	-40(%rbp), %rax
	cmpq	COMPARE(%rip), %rax
	je	.LBB0_53
# %bb.51:
	movq	-40(%rbp), %rax
	cmpq	COMPSIG(%rip), %rax
	je	.LBB0_53
# %bb.52:
	movq	-40(%rbp), %rax
	cmpq	COMPTOTAL(%rip), %rax
	jne	.LBB0_68
.LBB0_53:
	movq	-40(%rbp), %rax
	cmpq	COMPTOTAL(%rip), %rax
	jne	.LBB0_63
# %bb.54:
	cmpl	$0, -52(%rbp)
	jne	.LBB0_63
# %bb.55:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB0_62
# %bb.56:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB0_58
# %bb.57:
	movl	$-1, -52(%rbp)
	jmp	.LBB0_59
.LBB0_58:
	movl	$1, -52(%rbp)
.LBB0_59:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpl	$0, %eax
	je	.LBB0_61
# %bb.60:
	xorl	%eax, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_61:
	jmp	.LBB0_62
.LBB0_62:
	jmp	.LBB0_63
.LBB0_63:
	movq	-8(%rbp), %rdi
	callq	decNumberZero@PLT
	cmpl	$0, -52(%rbp)
	je	.LBB0_67
# %bb.64:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, (%rax)
	cmpl	$0, -52(%rbp)
	jge	.LBB0_66
# %bb.65:
	movl	DECNEG(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB0_66:
	jmp	.LBB0_67
.LBB0_67:
	jmp	.LBB0_96
.LBB0_68:
	movq	-40(%rbp), %rax
	cmpq	COMPNAN(%rip), %rax
	jne	.LBB0_70
# %bb.69:
	jmp	.LBB0_95
.LBB0_70:
	movl	$0, -60(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB0_88
# %bb.71:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	andl	DECNEG(%rip), %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	andl	DECNEG(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-80(%rbp), %eax
	je	.LBB0_76
# %bb.72:
	cmpl	$0, -76(%rbp)
	je	.LBB0_74
# %bb.73:
	movl	$-1, -52(%rbp)
	jmp	.LBB0_75
.LBB0_74:
	movl	$1, -52(%rbp)
.LBB0_75:
	jmp	.LBB0_87
.LBB0_76:
	cmpl	$0, -76(%rbp)
	je	.LBB0_82
# %bb.77:
	cmpl	$0, -80(%rbp)
	je	.LBB0_82
# %bb.78:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB0_80
# %bb.79:
	movl	$1, -52(%rbp)
	jmp	.LBB0_81
.LBB0_80:
	movl	$-1, -52(%rbp)
.LBB0_81:
	jmp	.LBB0_86
.LBB0_82:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jle	.LBB0_84
# %bb.83:
	movl	$1, -52(%rbp)
	jmp	.LBB0_85
.LBB0_84:
	movl	$-1, -52(%rbp)
.LBB0_85:
	jmp	.LBB0_86
.LBB0_86:
	jmp	.LBB0_87
.LBB0_87:
	jmp	.LBB0_88
.LBB0_88:
	movq	-40(%rbp), %rax
	cmpq	COMPMIN(%rip), %rax
	je	.LBB0_90
# %bb.89:
	movq	-40(%rbp), %rax
	cmpq	COMPMINMAG(%rip), %rax
	jne	.LBB0_91
.LBB0_90:
	xorl	%eax, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_91:
	cmpl	$0, -52(%rbp)
	jle	.LBB0_93
# %bb.92:
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	jmp	.LBB0_94
.LBB0_93:
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
.LBB0_94:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %r8
	leaq	-60(%rbp), %rcx
	callq	decCopyFit@PLT
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	leaq	-60(%rbp), %rdx
	callq	decFinish@PLT
.LBB0_95:
	jmp	.LBB0_96
.LBB0_96:
	jmp	.LBB0_97
.LBB0_97:
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	COMPTOTAL
	.p2align	3
COMPTOTAL:
	.quad	0                               # 0x0
	.globl	DECSNAN
	.p2align	2
DECSNAN:
	.long	0                               # 0x0
	.globl	DECNAN
	.p2align	2
DECNAN:
	.long	0                               # 0x0
	.globl	COMPARE
	.p2align	3
COMPARE:
	.quad	0                               # 0x0
	.globl	COMPSIG
	.p2align	3
COMPSIG:
	.quad	0                               # 0x0
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.globl	DEC_sNaN
	.p2align	2
DEC_sNaN:
	.long	0                               # 0x0
	.globl	COMPMAX
	.p2align	3
COMPMAX:
	.quad	0                               # 0x0
	.globl	COMPNAN
	.p2align	3
COMPNAN:
	.quad	0                               # 0x0
	.globl	COMPMAXMAG
	.p2align	3
COMPMAXMAG:
	.quad	0                               # 0x0
	.globl	COMPMINMAG
	.p2align	3
COMPMINMAG:
	.quad	0                               # 0x0
	.globl	BADINT
	.p2align	2
BADINT:
	.long	0                               # 0x0
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.long	0                               # 0x0
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	COMPMIN
	.p2align	3
COMPMIN:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNumberIsSNaN
	.addrsig_sym decNumberIsQNaN
	.addrsig_sym decUnitCompare
	.addrsig_sym D2U
	.addrsig_sym decNaNs
	.addrsig_sym decCompare
	.addrsig_sym decNumberZero
	.addrsig_sym decCopyFit
	.addrsig_sym decFinish
	.addrsig_sym COMPTOTAL
	.addrsig_sym DECSNAN
	.addrsig_sym DECNAN
	.addrsig_sym COMPARE
	.addrsig_sym COMPSIG
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN
	.addrsig_sym COMPMAX
	.addrsig_sym COMPNAN
	.addrsig_sym COMPMAXMAG
	.addrsig_sym COMPMINMAG
	.addrsig_sym BADINT
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DECNEG
	.addrsig_sym COMPMIN