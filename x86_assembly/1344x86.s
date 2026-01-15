	.text
	.p2align	4, 0x90                         # -- Begin function dshift
dshift:                                 # @dshift
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	callq	hi0bits@PLT
	subl	$4, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -24(%rbp)
.LBB0_2:
	movl	-24(%rbp), %eax
	andl	kmask(%rip), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	kmask
	.p2align	2
kmask:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dshift
	.addrsig_sym hi0bits
	.addrsig_sym kmask