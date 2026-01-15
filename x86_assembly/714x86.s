	.text
	.globl	decimal64ToNumber               # -- Begin function decimal64ToNumber
	.p2align	4, 0x90
decimal64ToNumber:                      # @decimal64ToNumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, DECLITEND(%rip)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	UBTOUI@PLT
	cltq
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$4, %rdi
	callq	UBTOUI@PLT
	cltq
	movq	%rax, -72(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	UBTOUI@PLT
	cltq
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$4, %rdi
	callq	UBTOUI@PLT
	cltq
	movq	%rax, -80(%rbp)
.LBB0_3:
	movq	-72(%rbp), %rax
	shrq	$26, %rax
	andq	$31, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	decNumberZero@PLT
	movabsq	$2147483648, %rax               # imm = 0x80000000
	andq	-72(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movl	DECNEG(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB0_5:
	movq	COMBMSD(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	COMBEXP(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	cmpq	$3, -40(%rbp)
	jne	.LBB0_13
# %bb.6:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_8
# %bb.7:
	movl	DECINF(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_27
.LBB0_8:
	movq	-72(%rbp), %rax
	andq	$33554432, %rax                 # imm = 0x2000000
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movl	DECSNAN(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB0_11
.LBB0_10:
	movl	DECNAN(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movq	$0, -32(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movq	-40(%rbp), %rcx
	shlq	$8, %rcx
	movq	-72(%rbp), %rax
	shrq	$18, %rax
	andq	$255, %rax
	addq	%rax, %rcx
	subq	DECIMAL64_Bias(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_14:
	movq	-72(%rbp), %rax
	andq	$262143, %rax                   # imm = 0x3FFFF
	movq	%rax, -72(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_16
# %bb.15:
	movq	-32(%rbp), %rax
	shlq	$18, %rax
	orq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$6, -52(%rbp)
	jmp	.LBB0_26
.LBB0_16:
	cmpq	$0, -72(%rbp)
	jne	.LBB0_22
# %bb.17:
	cmpq	$0, -80(%rbp)
	jne	.LBB0_19
# %bb.18:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_27
.LBB0_19:
	movl	$3, -52(%rbp)
	movabsq	$3221225472, %rax               # imm = 0xC0000000
	andq	-80(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB0_21
# %bb.20:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB0_21:
	jmp	.LBB0_25
.LBB0_22:
	movl	$4, -52(%rbp)
	movq	-72(%rbp), %rax
	andq	$261888, %rax                   # imm = 0x3FF00
	cmpq	$0, %rax
	je	.LBB0_24
# %bb.23:
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	movq	-24(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	decDigitsFromDPD@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_27:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECLITEND
	.p2align	3
DECLITEND:
	.quad	0                               # 0x0
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	COMBMSD
	.p2align	3
COMBMSD:
	.quad	0
	.globl	COMBEXP
	.p2align	3
COMBEXP:
	.quad	0
	.globl	DECINF
	.p2align	2
DECINF:
	.long	0                               # 0x0
	.globl	DECSNAN
	.p2align	2
DECSNAN:
	.long	0                               # 0x0
	.globl	DECNAN
	.p2align	2
DECNAN:
	.long	0                               # 0x0
	.globl	DECIMAL64_Bias
	.p2align	3
DECIMAL64_Bias:
	.quad	0                               # 0x0
	.globl	sourhi
	.p2align	2
sourhi:
	.long	0                               # 0x0
	.globl	sourlo
	.p2align	2
sourlo:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UBTOUI
	.addrsig_sym decNumberZero
	.addrsig_sym decDigitsFromDPD
	.addrsig_sym DECLITEND
	.addrsig_sym DECNEG
	.addrsig_sym COMBMSD
	.addrsig_sym COMBEXP
	.addrsig_sym DECINF
	.addrsig_sym DECSNAN
	.addrsig_sym DECNAN
	.addrsig_sym DECIMAL64_Bias