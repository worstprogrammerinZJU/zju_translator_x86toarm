	.text
	.p2align	4, 0x90                         # -- Begin function make_token
make_token:                             # @make_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movb	$0, %al
	callq	current_file@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	pos+4(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	pos(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	pos
	.p2align	2
pos:
	.zero	8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_token
	.addrsig_sym malloc
	.addrsig_sym current_file
	.addrsig_sym pos