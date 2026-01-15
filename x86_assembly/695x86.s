	.text
	.p2align	4, 0x90                         # -- Begin function decStatus
decStatus:                              # @decStatus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %eax
	andl	DEC_NaNs(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.1:
	movl	-12(%rbp), %eax
	andl	DEC_sNaN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	movl	DEC_sNaN(%rip), %eax
	xorl	$-1, %eax
	andl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	-8(%rbp), %rdi
	callq	decNumberZero@PLT
	movl	DECNAN(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	decContextSetStatus@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEC_NaNs
	.p2align	2
DEC_NaNs:
	.long	0                               # 0x0
	.globl	DEC_sNaN
	.p2align	2
DEC_sNaN:
	.long	0                               # 0x0
	.globl	DECNAN
	.p2align	2
DECNAN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decStatus
	.addrsig_sym decNumberZero
	.addrsig_sym decContextSetStatus
	.addrsig_sym DEC_NaNs
	.addrsig_sym DEC_sNaN
	.addrsig_sym DECNAN