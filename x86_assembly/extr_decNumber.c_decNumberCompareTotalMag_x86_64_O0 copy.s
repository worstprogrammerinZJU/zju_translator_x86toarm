	.text
	.globl	decNumberCompareTotalMag        # -- Begin function decNumberCompareTotalMag
	.p2align	4, 0x90
decNumberCompareTotalMag:               # @decNumberCompareTotalMag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	DECBUFFER(%rip), %edi
	addl	$1, %edi
	callq	D2N@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	%rsp, %rcx
	movq	%rcx, -48(%rbp)
	leaq	15(,%rax,8), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -120(%rbp)                # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	DECBUFFER(%rip), %edi
	addl	$1, %edi
	callq	D2N@PLT
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	leaq	15(,%rax,8), %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.2:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	D2U@PLT
	movq	-128(%rbp), %rcx                # 8-byte Reload
	subl	$1, %eax
	cltq
	shlq	$2, %rax
	addq	$8, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
	movslq	-40(%rbp), %rax
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_6
# %bb.3:
	movl	-40(%rbp), %edi
	callq	malloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_5
# %bb.4:
	movl	DEC_Insufficient_storage(%rip), %eax
	orl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_15
.LBB0_5:
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB0_6:
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	decNumberCopy@PLT
	movl	DECNEG(%rip), %ecx
	xorl	$-1, %ecx
	movq	-88(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_7:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_13
# %bb.8:
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	D2U@PLT
	movq	-112(%rbp), %rcx                # 8-byte Reload
	subl	$1, %eax
	cltq
	shlq	$2, %rax
	addq	$8, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
	movslq	-40(%rbp), %rax
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_12
# %bb.9:
	movl	-40(%rbp), %edi
	callq	malloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_11
# %bb.10:
	movl	DEC_Insufficient_storage(%rip), %eax
	orl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_15
.LBB0_11:
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_12:
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decNumberCopy@PLT
	movl	DECNEG(%rip), %ecx
	xorl	$-1, %ecx
	movq	-96(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_13:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	COMPTOTAL(%rip), %r8d
	leaq	-36(%rbp), %r9
	callq	decCompareOp@PLT
# %bb.14:
	jmp	.LBB0_15
.LBB0_15:
	cmpq	$0, -64(%rbp)
	je	.LBB0_17
# %bb.16:
	movq	-64(%rbp), %rdi
	callq	free@PLT
.LBB0_17:
	cmpq	$0, -80(%rbp)
	je	.LBB0_19
# %bb.18:
	movq	-80(%rbp), %rdi
	callq	free@PLT
.LBB0_19:
	cmpl	$0, -36(%rbp)
	je	.LBB0_21
# %bb.20:
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_21:
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
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
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.long	0                               # 0x0
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	COMPTOTAL
	.p2align	2
COMPTOTAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym D2N
	.addrsig_sym decNumberIsNegative
	.addrsig_sym D2U
	.addrsig_sym malloc
	.addrsig_sym decNumberCopy
	.addrsig_sym decCompareOp
	.addrsig_sym free
	.addrsig_sym decStatus
	.addrsig_sym DECBUFFER
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DECNEG
	.addrsig_sym COMPTOTAL