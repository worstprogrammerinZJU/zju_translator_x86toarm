	.text
	.p2align	4, 0x90                         # -- Begin function exclusive
exclusive:                              # @exclusive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	NOINFO(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	NOINFO(%rip), %rax
	jne	.LBB0_3
.LBB0_2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	callq	exclusiveset@PLT
	movl	%eax, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NOINFO
	.p2align	3
NOINFO:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exclusive
	.addrsig_sym exclusiveset
	.addrsig_sym NOINFO