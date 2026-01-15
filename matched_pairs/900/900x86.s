	.text
	.globl	fileadd                         # -- Begin function fileadd
	.p2align	4, 0x90
fileadd:                                # @fileadd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, (%rax)
.LBB0_2:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig