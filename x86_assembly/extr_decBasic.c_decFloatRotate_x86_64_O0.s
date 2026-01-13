	.text
	.globl	decFloatRotate                  # -- Begin function decFloatRotate
	.p2align	4, 0x90
decFloatRotate:                         # @decFloatRotate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	DECPMAX(%rip), %eax
	movl	PHALF(%rip), %ecx
	addl	%ecx, %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -56(%rbp)
	leaq	15(,%rax,4), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -120(%rbp)                # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpq	$0, %rax
	je	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	decNaNs@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_27
.LBB0_3:
	movq	-32(%rbp), %rdi
	callq	DFISINT@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decInvalid@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_27
.LBB0_5:
	movq	-32(%rbp), %rdi
	callq	decFloatDigits@PLT
	movl	%eax, -68(%rbp)
	cmpl	$2, -68(%rbp)
	jle	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decInvalid@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_27
.LBB0_7:
	movq	DPD2BIN(%rip), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rdi
	movq	DECWORDS(%rip), %rsi
	subq	$1, %rsi
	callq	DFWORD@PLT
	movl	%eax, %ecx
	movq	-128(%rbp), %rax                # 8-byte Reload
	andl	$1023, %ecx                     # imm = 0x3FF
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	DECPMAX(%rip), %eax
	jle	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	decInvalid@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_27
.LBB0_9:
	movq	-24(%rbp), %rdi
	callq	DFISINF@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decInfinity@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_27
.LBB0_11:
	cmpl	$0, -44(%rbp)
	je	.LBB0_13
# %bb.12:
	movl	-44(%rbp), %eax
	cmpl	DECPMAX(%rip), %eax
	jne	.LBB0_14
.LBB0_13:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decCanonical@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
	jmp	.LBB0_27
.LBB0_14:
	movq	-32(%rbp), %rdi
	callq	DFISSIGNED@PLT
	cmpq	$0, %rax
	je	.LBB0_16
# %bb.15:
	xorl	%eax, %eax
	subl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_16:
	movl	-44(%rbp), %edi
	callq	abs@PLT
	cmpl	PHALF(%rip), %eax
	jle	.LBB0_21
# %bb.17:
	cmpl	$0, -44(%rbp)
	jge	.LBB0_19
# %bb.18:
	movl	DECPMAX(%rip), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_20
.LBB0_19:
	movl	-44(%rbp), %eax
	subl	DECPMAX(%rip), %eax
	movl	%eax, -44(%rbp)
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	%rax, -104(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB0_23
# %bb.22:
	movl	PHALF(%rip), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
.LBB0_23:
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	GETCOEFF@PLT
	cmpl	$0, -44(%rbp)
	jge	.LBB0_25
# %bb.24:
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movslq	DECPMAX(%rip), %rax
	shlq	$2, %rax
	movq	%rdi, %rsi
	addq	%rax, %rsi
	movl	PHALF(%rip), %edx
	callq	memcpy@PLT
                                        # kill: def $ecx killed $eax
	movq	-120(%rbp), %rax                # 8-byte Reload
	movslq	PHALF(%rip), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB0_26
.LBB0_25:
	movq	-120(%rbp), %rsi                # 8-byte Reload
	movslq	DECPMAX(%rip), %rax
	shlq	$2, %rax
	movq	%rsi, %rdi
	addq	%rax, %rdi
	movl	PHALF(%rip), %edx
	callq	memcpy@PLT
                                        # kill: def $ecx killed $eax
	movq	-120(%rbp), %rax                # 8-byte Reload
	movslq	-44(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
.LBB0_26:
	movq	-88(%rbp), %rax
	movslq	DECPMAX(%rip), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	DFWORD@PLT
	andl	DECFLOAT_Sign(%rip), %eax
	movl	%eax, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	GETEXPUN@PLT
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	callq	decFinalize@PLT
	movl	-72(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -108(%rbp)
.LBB0_27:
	movq	-56(%rbp), %rax
	movq	%rax, %rsp
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECPMAX
	.p2align	2
DECPMAX:
	.long	0                               # 0x0
	.globl	PHALF
	.p2align	2
PHALF:
	.long	0                               # 0x0
	.globl	DPD2BIN
	.p2align	3
DPD2BIN:
	.quad	0
	.globl	DECWORDS
	.p2align	3
DECWORDS:
	.quad	0                               # 0x0
	.globl	DECFLOAT_Sign
	.p2align	2
DECFLOAT_Sign:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN
	.addrsig_sym decNaNs
	.addrsig_sym DFISINT
	.addrsig_sym decInvalid
	.addrsig_sym decFloatDigits
	.addrsig_sym DFWORD
	.addrsig_sym DFISINF
	.addrsig_sym decInfinity
	.addrsig_sym decCanonical
	.addrsig_sym DFISSIGNED
	.addrsig_sym abs
	.addrsig_sym GETCOEFF
	.addrsig_sym memcpy
	.addrsig_sym GETEXPUN
	.addrsig_sym decFinalize
	.addrsig_sym DECPMAX
	.addrsig_sym PHALF
	.addrsig_sym DPD2BIN
	.addrsig_sym DECWORDS
	.addrsig_sym DECFLOAT_Sign