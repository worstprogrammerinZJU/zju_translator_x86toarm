	.text
	.p2align	4, 0x90                         # -- Begin function decNaNs
decNaNs:                                # @decNaNs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	DECSNAN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movl	DEC_Invalid_operation(%rip), %ecx
	orl	DEC_sNaN(%rip), %ecx
	movq	-40(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_12
.LBB0_2:
	cmpq	$0, -24(%rbp)
	jne	.LBB0_4
# %bb.3:
	jmp	.LBB0_11
.LBB0_4:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	DECSNAN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	DEC_Invalid_operation(%rip), %ecx
	orl	DEC_sNaN(%rip), %ecx
	movq	-40(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_10
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	DECNAN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.7:
	jmp	.LBB0_9
.LBB0_8:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB0_14
# %bb.13:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	decNumberCopy@PLT
	jmp	.LBB0_21
.LBB0_14:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jae	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_15
.LBB0_18:
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	imull	DECDPUN(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jle	.LBB0_20
# %bb.19:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movq	-32(%rbp), %rax
	subl	(%rax), %esi
	callq	decDecap@PLT
.LBB0_20:
	jmp	.LBB0_21
.LBB0_21:
	movl	DECSNAN(%rip), %ecx
	xorl	$-1, %ecx
	movq	-8(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	DECNAN(%rip), %ecx
	movq	-8(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECSNAN
	.p2align	2
DECSNAN:
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
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNaNs
	.addrsig_sym decNumberCopy
	.addrsig_sym D2U
	.addrsig_sym decDecap
	.addrsig_sym DECSNAN
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN
	.addrsig_sym DECNAN
	.addrsig_sym DECDPUN