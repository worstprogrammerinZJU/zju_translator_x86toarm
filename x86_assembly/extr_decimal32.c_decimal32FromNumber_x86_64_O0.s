	.text
	.globl	decimal32FromNumber             # -- Begin function decimal32FromNumber
	.p2align	4, 0x90
decimal32FromNumber:                    # @decimal32FromNumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	8(%rcx), %rcx
	addq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	DECIMAL32_Pmax(%rip), %eax
	jg	.LBB0_3
# %bb.1:
	movq	-40(%rbp), %rax
	cmpq	DECIMAL32_Emax(%rip), %rax
	jg	.LBB0_3
# %bb.2:
	movq	-40(%rbp), %rax
	cmpq	DECIMAL32_Emin(%rip), %rax
	jge	.LBB0_4
.LBB0_3:
	movl	DEC_INIT_DECIMAL32(%rip), %esi
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
	movl	%eax, -88(%rbp)
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
	cmpl	DECIMAL32_Pmax(%rip), %eax
	jge	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	leaq	-88(%rbp), %rsi
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
	orl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movl	DECIMAL_sNaN(%rip), %eax
	shll	$24, %eax
	orl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	jmp	.LBB0_39
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
	subq	DECIMAL32_Bias(%rip), %rcx
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
	addq	DECIMAL32_Bias(%rip), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	DECIMAL32_Ehigh(%rip), %eax
	jle	.LBB0_21
# %bb.20:
	movl	DECIMAL32_Ehigh(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	DEC_Clamped(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	movl	-80(%rbp), %eax
	sarl	$3, %eax
	andl	$24, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_38
.LBB0_23:
	movq	$0, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	DECIMAL32_Bias(%rip), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	DECIMAL32_Ehigh(%rip), %eax
	jle	.LBB0_25
# %bb.24:
	movl	-80(%rbp), %eax
	subl	DECIMAL32_Ehigh(%rip), %eax
	cltq
	movq	%rax, -104(%rbp)
	movl	DECIMAL32_Ehigh(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	DEC_Clamped(%rip), %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_25:
	cmpl	$3, DECDPUN(%rip)
	jne	.LBB0_33
# %bb.26:
	cmpq	$0, -104(%rbp)
	jne	.LBB0_33
# %bb.27:
	movq	BIN2DPD(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jle	.LBB0_29
# %bb.28:
	movq	BIN2DPD(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	(%rax,%rcx,4), %eax
	shll	$10, %eax
	orl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB0_29:
	movq	-16(%rbp), %rax
	cmpl	$7, 8(%rax)
	jne	.LBB0_31
# %bb.30:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB0_32
.LBB0_31:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB0_32
.LBB0_32:
	movq	-112(%rbp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_34
.LBB0_33:
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	callq	decDigitsToDPD@PLT
	movl	-88(%rbp), %eax
	sarl	$20, %eax
	movl	%eax, -92(%rbp)
	movl	-88(%rbp), %eax
	andl	$1048575, %eax                  # imm = 0xFFFFF
	movl	%eax, -88(%rbp)
.LBB0_34:
	cmpl	$8, -92(%rbp)
	jl	.LBB0_36
# %bb.35:
	movl	-80(%rbp), %eax
	sarl	$5, %eax
	andl	$6, %eax
	orl	$24, %eax
	movl	-92(%rbp), %ecx
	andl	$1, %ecx
	orl	%ecx, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_37
.LBB0_36:
	movl	-80(%rbp), %eax
	sarl	$3, %eax
	andl	$24, %eax
	orl	-92(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	movl	-76(%rbp), %eax
	shll	$26, %eax
	orl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-80(%rbp), %eax
	andl	$63, %eax
	shll	$20, %eax
	orl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB0_39:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	DECNEG(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_41
# %bb.40:
	movl	-88(%rbp), %eax
	orl	$-2147483648, %eax              # imm = 0x80000000
	movl	%eax, -88(%rbp)
.LBB0_41:
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movl	-88(%rbp), %esi
	callq	UBFROMUI@PLT
	cmpl	$0, -28(%rbp)
	je	.LBB0_43
# %bb.42:
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	decContextSetStatus@PLT
.LBB0_43:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECIMAL32_Pmax
	.p2align	2
DECIMAL32_Pmax:
	.long	0                               # 0x0
	.globl	DECIMAL32_Emax
	.p2align	3
DECIMAL32_Emax:
	.quad	0                               # 0x0
	.globl	DECIMAL32_Emin
	.p2align	3
DECIMAL32_Emin:
	.quad	0                               # 0x0
	.globl	DEC_INIT_DECIMAL32
	.p2align	2
DEC_INIT_DECIMAL32:
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
	.globl	DECIMAL32_Bias
	.p2align	3
DECIMAL32_Bias:
	.quad	0                               # 0x0
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.long	0                               # 0x0
	.globl	DECIMAL32_Ehigh
	.p2align	2
DECIMAL32_Ehigh:
	.long	0                               # 0x0
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.long	0                               # 0x0
	.globl	BIN2DPD
	.p2align	3
BIN2DPD:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberPlus
	.addrsig_sym decDigitsToDPD
	.addrsig_sym decNumberIsZero
	.addrsig_sym UBFROMUI
	.addrsig_sym decContextSetStatus
	.addrsig_sym DECIMAL32_Pmax
	.addrsig_sym DECIMAL32_Emax
	.addrsig_sym DECIMAL32_Emin
	.addrsig_sym DEC_INIT_DECIMAL32
	.addrsig_sym DECNEG
	.addrsig_sym DECSPECIAL
	.addrsig_sym DECINF
	.addrsig_sym DECIMAL_Inf
	.addrsig_sym DECNAN
	.addrsig_sym DECIMAL_NaN
	.addrsig_sym DECIMAL_sNaN
	.addrsig_sym DECIMAL32_Bias
	.addrsig_sym DEC_Clamped
	.addrsig_sym DECIMAL32_Ehigh
	.addrsig_sym DECDPUN
	.addrsig_sym BIN2DPD