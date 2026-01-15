	.text
	.globl	decFloatDigits                  # -- Begin function decFloatDigits
	.p2align	4, 0x90
decFloatDigits:                         # @decFloatDigits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	DFWORD@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	DFISINF@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.3:
	movq	DECCOMBMSD(%rip), %rax
	movl	-24(%rbp), %ecx
	sarl	$26, %ecx
	movslq	%ecx, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_5
# %bb.4:
	movl	DECPMAX(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECCOMBMSD
	.p2align	3
DECCOMBMSD:
	.quad	0
	.globl	DECPMAX
	.p2align	2
DECPMAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFWORD
	.addrsig_sym DFISINF
	.addrsig_sym DFISNAN
	.addrsig_sym DECCOMBMSD
	.addrsig_sym DECPMAX