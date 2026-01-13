	.text
	.globl	decNumberCopySign               # -- Begin function decNumberCopySign
	.p2align	4, 0x90
decNumberCopySign:                      # @decNumberCopySign
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	DECNEG(%rip), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	decNumberCopy@PLT
	movl	DECNEG(%rip), %ecx
	xorl	$-1, %ecx
	movq	-8(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.long	0                               # 0x0
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberCopy
	.addrsig_sym DECNEG