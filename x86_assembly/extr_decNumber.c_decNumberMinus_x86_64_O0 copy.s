	.text
	.globl	decNumberMinus                  # -- Begin function decNumberMinus
	.p2align	4, 0x90
decNumberMinus:                         # @decNumberMinus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -40(%rbp)
	leaq	-32(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	DECNEG(%rip), %r8d
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %r9
	callq	decAddOp@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_2:
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
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberZero
	.addrsig_sym decAddOp
	.addrsig_sym decStatus
	.addrsig_sym DECNEG