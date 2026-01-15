	.text
	.globl	decimal128FromNumber            # -- Begin function decimal128FromNumber
	.p2align	4, 0x90
decimal128FromNumber:                   # @decimal128FromNumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	8(%rcx), %rcx
	addq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	DECIMAL128_Pmax(%rip), %eax
	jg	.LBB0_3
# %bb.1:
	movq	-40(%rbp), %rax
	cmpq	DECIMAL128_Emax(%rip), %rax
	jg	.LBB0_3
# %bb.2:
	movq	-40(%rbp), %rax
	cmpq	DECIMAL128_Emin(%rip), %rax
	jge	.LBB0_4
.LBB0_3:
	movl	DEC_INIT_DECIMAL128(%rip), %esi
	leaq	-72(%rbp), %rdi
	callq	decContextDefault@PLT
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rdx
	callq	decNumberPlus@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	DECNEG(%rip), %eax
	orl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -28(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	DECSPECIAL(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_16
# %bb.5:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	DECINF(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:
	movl	DECIMAL_Inf(%rip), %eax
	shll	$24, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_15
.LBB0_7:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jle	.LBB0_11
.LBB0_9:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	DECIMAL128_Pmax(%rip), %eax
	jge	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	decDigitsToDPD@PLT
.LBB0_11:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	DECNAN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_13
# %bb.12:
	movl	DECIMAL_NaN(%rip), %eax
	shll	$24, %eax
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movl	DECIMAL_sNaN(%rip), %eax
	shll	$24, %eax
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	jmp	.LBB0_30
.LBB0_16:
	movq	-16(%rbp), %rdi
	callq	decNumberIsZero@PLT
	cmpq	$0, %rax
	je	.LBB0_23
# %bb.17:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	DECIMAL128_Bias(%rip), %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_19
# %bb.18:
	movl	$0, -80(%rbp)
	movl	DEC_Clamped(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_22
.LBB0_19:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	DECIMAL128_Bias(%rip), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	DECIMAL128_Ehigh(%rip), %eax
	jle	.LBB0_21
# %bb.20:
	movl	DECIMAL128_Ehigh(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	DEC_Clamped(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	movl	-80(%rbp), %eax
	sarl	$9, %eax
	andl	$24, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_29
.LBB0_23:
	movq	$0, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	DECIMAL128_Bias(%rip), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	DECIMAL128_Ehigh(%rip), %eax
	jle	.LBB0_25
# %bb.24:
	movl	-80(%rbp), %eax
	subl	DECIMAL128_Ehigh(%rip), %eax
	cltq
	movq	%rax, -128(%rbp)
	movl	DECIMAL128_Ehigh(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	DEC_Clamped(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_25:
	movq	-16(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movq	-128(%rbp), %rdx
	callq	decDigitsToDPD@PLT
	movl	-100(%rbp), %eax
	sarl	$14, %eax
	movl	%eax, -116(%rbp)
	movl	-100(%rbp), %eax
	andl	$16383, %eax                    # imm = 0x3FFF
	movl	%eax, -100(%rbp)
	cmpl	$8, -116(%rbp)
	jl	.LBB0_27
# %bb.26:
	movl	-80(%rbp), %eax
	sarl	$11, %eax
	andl	$6, %eax
	orl	$24, %eax
	movl	-116(%rbp), %ecx
	andl	$1, %ecx
	orl	%ecx, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_28
.LBB0_27:
	movl	-80(%rbp), %eax
	sarl	$9, %eax
	andl	$24, %eax
	orl	-116(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB0_28:
	jmp	.LBB0_29
.LBB0_29:
	movl	-76(%rbp), %eax
	shll	$26, %eax
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-80(%rbp), %eax
	andl	$4095, %eax                     # imm = 0xFFF
	shll	$14, %eax
	orl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB0_30:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	DECNEG(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_32
# %bb.31:
	movl	-100(%rbp), %eax
	orl	$-2147483648, %eax              # imm = 0x80000000
	movl	%eax, -100(%rbp)
.LBB0_32:
	cmpq	$0, DECLITEND(%rip)
	je	.LBB0_34
# %bb.33:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-112(%rbp), %esi
	callq	UBFROMUI@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$4, %rdi
	movl	-108(%rbp), %esi
	callq	UBFROMUI@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$8, %rdi
	movl	-104(%rbp), %esi
	callq	UBFROMUI@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$12, %rdi
	movl	-100(%rbp), %esi
	callq	UBFROMUI@PLT
	jmp	.LBB0_35
.LBB0_34:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-100(%rbp), %esi
	callq	UBFROMUI@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$4, %rdi
	movl	-104(%rbp), %esi
	callq	UBFROMUI@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$8, %rdi
	movl	-108(%rbp), %esi
	callq	UBFROMUI@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$12, %rdi
	movl	-112(%rbp), %esi
	callq	UBFROMUI@PLT
.LBB0_35:
	cmpl	$0, -28(%rbp)
	je	.LBB0_37
# %bb.36:
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	decContextSetStatus@PLT
.LBB0_37:
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECIMAL128_Pmax
	.p2align	2
DECIMAL128_Pmax:
	.long	0                               # 0x0
	.globl	DECIMAL128_Emax
	.p2align	3
DECIMAL128_Emax:
	.quad	0                               # 0x0
	.globl	DECIMAL128_Emin
	.p2align	3
DECIMAL128_Emin:
	.quad	0                               # 0x0
	.globl	DEC_INIT_DECIMAL128
	.p2align	2
DEC_INIT_DECIMAL128:
	.long	0                               # 0x0
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	DECSPECIAL
	.p2align	2
DECSPECIAL:
	.long	0                               # 0x0
	.globl	DECINF
	.p2align	2
DECINF:
	.long	0                               # 0x0
	.globl	DECIMAL_Inf
	.p2align	2
DECIMAL_Inf:
	.long	0                               # 0x0
	.globl	DECNAN
	.p2align	2
DECNAN:
	.long	0                               # 0x0
	.globl	DECIMAL_NaN
	.p2align	2
DECIMAL_NaN:
	.long	0                               # 0x0
	.globl	DECIMAL_sNaN
	.p2align	2
DECIMAL_sNaN:
	.long	0                               # 0x0
	.globl	DECIMAL128_Bias
	.p2align	3
DECIMAL128_Bias:
	.quad	0                               # 0x0
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.long	0                               # 0x0
	.globl	DECIMAL128_Ehigh
	.p2align	2
DECIMAL128_Ehigh:
	.long	0                               # 0x0
	.globl	DECLITEND
	.p2align	3
DECLITEND:
	.quad	0                               # 0x0
	.globl	targhi
	.p2align	2
targhi:
	.long	0                               # 0x0
	.globl	targlo
	.p2align	2
targlo:
	.long	0                               # 0x0
	.globl	targmh
	.p2align	2
targmh:
	.long	0                               # 0x0
	.globl	targml
	.p2align	2
targml:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberPlus
	.addrsig_sym decDigitsToDPD
	.addrsig_sym decNumberIsZero
	.addrsig_sym UBFROMUI
	.addrsig_sym decContextSetStatus
	.addrsig_sym DECIMAL128_Pmax
	.addrsig_sym DECIMAL128_Emax
	.addrsig_sym DECIMAL128_Emin
	.addrsig_sym DEC_INIT_DECIMAL128
	.addrsig_sym DECNEG
	.addrsig_sym DECSPECIAL
	.addrsig_sym DECINF
	.addrsig_sym DECIMAL_Inf
	.addrsig_sym DECNAN
	.addrsig_sym DECIMAL_NaN
	.addrsig_sym DECIMAL_sNaN
	.addrsig_sym DECIMAL128_Bias
	.addrsig_sym DEC_Clamped
	.addrsig_sym DECIMAL128_Ehigh
	.addrsig_sym DECLITEND