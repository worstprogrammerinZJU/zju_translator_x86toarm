	.text
	.globl	decNumberExp                    # -- Begin function decNumberExp
	.p2align	4, 0x90
decNumberExp:                           # @decNumberExp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	callq	decCheckMath@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.1:
	jmp	.LBB0_2
.LBB0_2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	callq	decExpOp@PLT
# %bb.3:
	jmp	.LBB0_4
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
	addq	$32, %rsp
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
	.addrsig_sym decCheckMath
	.addrsig_sym decExpOp
	.addrsig_sym decStatus