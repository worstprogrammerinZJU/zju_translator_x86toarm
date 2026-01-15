	.text
	.globl	decNumberReduce                 # -- Begin function decNumberReduce
	.p2align	4, 0x90
decNumberReduce:                        # @decNumberReduce
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %r8
	callq	decNaNs@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %r8
	callq	decCopyFit@PLT
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	callq	decFinish@PLT
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	leaq	-40(%rbp), %r8
	callq	decTrim@PLT
.LBB0_4:
	cmpq	$0, -32(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNaNs
	.addrsig_sym decCopyFit
	.addrsig_sym decFinish
	.addrsig_sym decTrim
	.addrsig_sym decStatus