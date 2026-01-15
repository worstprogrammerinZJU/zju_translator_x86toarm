	.text
	.globl	connsched                       # -- Begin function connsched
	.p2align	4, 0x90
connsched:                              # @connsched
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	callq	heapremove@PLT
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	conntickat@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	heapinsert@PLT
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
.LBB0_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym heapremove
	.addrsig_sym conntickat
	.addrsig_sym heapinsert