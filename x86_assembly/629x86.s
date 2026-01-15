	.text
	.globl	decContextSetStatus             # -- Begin function decContextSetStatus
	.p2align	4, 0x90
decContextSetStatus:                    # @decContextSetStatus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	andl	4(%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:
	movl	SIGFPE(%rip), %edi
	callq	raise@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SIGFPE
	.p2align	2
SIGFPE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym raise
	.addrsig_sym SIGFPE