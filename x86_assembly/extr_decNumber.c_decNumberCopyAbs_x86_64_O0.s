	.text
	.globl	decNumberCopyAbs                # -- Begin function decNumberCopyAbs
	.p2align	4, 0x90
decNumberCopyAbs:                       # @decNumberCopyAbs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	decNumberCopy@PLT
	movl	DECNEG(%rip), %ecx
	xorl	$-1, %ecx
	movq	-8(%rbp), %rax
	andl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
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