	.text
	.p2align	4, 0x90                         # -- Begin function epollq_add
epollq_add:                             # @epollq_add
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movb	-9(%rbp), %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rdi
	callq	connsched@PLT
	movq	epollq(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, epollq(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	epollq
	.p2align	3
epollq:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epollq_add
	.addrsig_sym connsched
	.addrsig_sym epollq