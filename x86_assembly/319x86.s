	.text
	.p2align	4, 0x90                         # -- Begin function inst_new
inst_new:                               # @inst_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$104, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 8(%rax)
	movb	$0, %al
	callq	gen_noop@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movb	$0, %al
	callq	gen_noop@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movl	UNKNOWN_LOCATION(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	UNKNOWN_LOCATION
	.p2align	2
UNKNOWN_LOCATION:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym jv_mem_alloc
	.addrsig_sym gen_noop
	.addrsig_sym UNKNOWN_LOCATION