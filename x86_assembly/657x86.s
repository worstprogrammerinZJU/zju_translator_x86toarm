	.text
	.globl	decNumberFMA                    # -- Begin function decNumberFMA
	.p2align	4, 0x90
decNumberFMA:                           # @decNumberFMA
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	DECBUFFER(%rip), %ecx
                                        # implicit-def: $rax
	movl	%ecx, %eax
	leal	1(%rax,%rax), %edi
	callq	D2N@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	%rsp, %rcx
	movq	%rcx, -88(%rbp)
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -136(%rbp)                # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	decNumberIsSpecial@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	callq	decCheckMath@PLT
	cmpq	$0, %rax
	jne	.LBB0_7
.LBB0_3:
	movq	-24(%rbp), %rdi
	callq	decNumberIsSpecial@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	callq	decCheckMath@PLT
	cmpq	$0, %rax
	jne	.LBB0_7
.LBB0_5:
	movq	-32(%rbp), %rdi
	callq	decNumberIsSpecial@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.6:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	callq	decCheckMath@PLT
	cmpq	$0, %rax
	je	.LBB0_8
.LBB0_7:
	jmp	.LBB0_18
.LBB0_8:
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -72(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -64(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	8(%rdx), %rcx
	movq	%rcx, -72(%rbp)
	movl	DEC_MAX_EMAX(%rip), %ecx
	movl	%ecx, -60(%rbp)
	movl	DEC_MIN_EMIN(%rip), %ecx
	movl	%ecx, -64(%rbp)
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rdi
	callq	D2U@PLT
	movq	-144(%rbp), %rcx                # 8-byte Reload
	subl	$1, %eax
	cltq
	shlq	$2, %rax
	addq	$16, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -76(%rbp)
	movslq	-76(%rbp), %rax
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_12
# %bb.9:
	movl	-76(%rbp), %edi
	callq	malloc@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_11
# %bb.10:
	movl	DEC_Insufficient_storage(%rip), %eax
	orl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_18
.LBB0_11:
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB0_12:
	movq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-44(%rbp), %r8
	callq	decMultiplyOp@PLT
	movl	-44(%rbp), %eax
	andl	DEC_Invalid_operation(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_16
# %bb.13:
	movl	-44(%rbp), %eax
	andl	DEC_sNaN(%rip), %eax
	cmpl	$0, %eax
	jne	.LBB0_15
# %bb.14:
	movq	-8(%rbp), %rdi
	callq	decNumberZero@PLT
	movl	DECNAN(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_18
.LBB0_15:
	leaq	-128(%rbp), %rdi
	callq	decNumberZero@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_16:
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	xorl	%r8d, %r8d
	leaq	-44(%rbp), %r9
	callq	decAddOp@PLT
# %bb.17:
	jmp	.LBB0_18
.LBB0_18:
	cmpq	$0, -104(%rbp)
	je	.LBB0_20
# %bb.19:
	movq	-104(%rbp), %rdi
	callq	free@PLT
.LBB0_20:
	cmpl	$0, -44(%rbp)
	je	.LBB0_22
# %bb.21:
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_22:
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECBUFFER
	.p2align	2
DECBUFFER:
	.long	0                               # 0x0
	.globl	DEC_MAX_EMAX
	.p2align	2
DEC_MAX_EMAX:
	.long	0                               # 0x0
	.globl	DEC_MIN_EMIN
	.p2align	2
DEC_MIN_EMIN:
	.long	0                               # 0x0
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.long	0                               # 0x0
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.long	0                               # 0x0
	.globl	DEC_sNaN
	.p2align	2
DEC_sNaN:
	.long	0                               # 0x0
	.globl	DECNAN
	.p2align	2
DECNAN:
	.long	0                               # 0x0
	.globl	DECUNUSED
	.p2align	3
DECUNUSED:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym D2N
	.addrsig_sym decNumberIsSpecial
	.addrsig_sym decCheckMath
	.addrsig_sym D2U
	.addrsig_sym malloc
	.addrsig_sym decMultiplyOp
	.addrsig_sym decNumberZero
	.addrsig_sym decAddOp
	.addrsig_sym free
	.addrsig_sym decStatus
	.addrsig_sym DECBUFFER
	.addrsig_sym DEC_MAX_EMAX
	.addrsig_sym DEC_MIN_EMIN
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN
	.addrsig_sym DECNAN