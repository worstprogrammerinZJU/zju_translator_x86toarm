	.text
	.globl	conndeadlinesoon                # -- Begin function conndeadlinesoon
	.p2align	4, 0x90
conndeadlinesoon:                       # @conndeadlinesoon
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	nanoseconds@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	connsoonestjob@PLT
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	SAFETY_MARGIN(%rip), %rcx
	cmpq	%rcx, %rax
	setge	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAFETY_MARGIN
	.p2align	3
SAFETY_MARGIN:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nanoseconds
	.addrsig_sym connsoonestjob
	.addrsig_sym SAFETY_MARGIN