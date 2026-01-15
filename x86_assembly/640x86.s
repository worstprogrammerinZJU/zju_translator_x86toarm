	.text
	.p2align	4, 0x90                         # -- Begin function decDecap
decDecap:                               # @decDecap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jb	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	subq	-24(%rbp), %rdi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	subq	-24(%rbp), %rdi
	callq	MSUDIGITS@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movq	powers(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	(%rax), %rax
	cqto
	idivq	%rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, (%rax)
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	addq	$1, %rax
	movl	%eax, %esi
	callq	decGetDigits@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decDecap
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym decGetDigits
	.addrsig_sym DECDPUN
	.addrsig_sym powers