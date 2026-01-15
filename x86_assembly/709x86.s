	.text
	.globl	decimal32ToNumber               # -- Begin function decimal32ToNumber
	.p2align	4, 0x90
decimal32ToNumber:                      # @decimal32ToNumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	UBTOUI@PLT
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	sarl	$26, %eax
	andl	$31, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	decNumberZero@PLT
	movl	-40(%rbp), %eax
	andl	$-2147483648, %eax              # imm = 0x80000000
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movl	DECNEG(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB0_2:
	movq	COMBMSD(%rip), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	movq	COMBEXP(%rip), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -32(%rbp)
	cmpl	$3, -32(%rbp)
	jne	.LBB0_10
# %bb.3:
	cmpl	$0, -28(%rbp)
	jne	.LBB0_5
# %bb.4:
	movl	DECINF(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_5:
	movl	-40(%rbp), %eax
	andl	$33554432, %eax                 # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:
	movl	DECSNAN(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB0_8
.LBB0_7:
	movl	DECNAN(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movl	$0, -28(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	-32(%rbp), %eax
	shll	$6, %eax
	movl	-40(%rbp), %ecx
	sarl	$20, %ecx
	andl	$63, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rcx
	subq	DECIMAL32_Bias(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_11:
	movl	-40(%rbp), %eax
	andl	$1048575, %eax                  # imm = 0xFFFFF
	movl	%eax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_13
# %bb.12:
	movl	-28(%rbp), %eax
	shll	$20, %eax
	orl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	movl	$3, %edx
	callq	decDigitsFromDPD@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_13:
	cmpl	$0, -40(%rbp)
	jne	.LBB0_15
# %bb.14:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_15:
	movl	-40(%rbp), %eax
	andl	$1047552, %eax                  # imm = 0xFFC00
	cmpl	$0, %eax
	je	.LBB0_17
# %bb.16:
	movq	-24(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	movl	$2, %edx
	callq	decDigitsFromDPD@PLT
	jmp	.LBB0_18
.LBB0_17:
	movq	-24(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	callq	decDigitsFromDPD@PLT
.LBB0_18:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_19:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
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
	.globl	DECIMAL32_Bias
	.p2align	3
DECIMAL32_Bias:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UBTOUI
	.addrsig_sym decNumberZero
	.addrsig_sym decDigitsFromDPD
	.addrsig_sym DECNEG
	.addrsig_sym COMBMSD
	.addrsig_sym COMBEXP
	.addrsig_sym DECINF
	.addrsig_sym DECSNAN
	.addrsig_sym DECNAN
	.addrsig_sym DECIMAL32_Bias