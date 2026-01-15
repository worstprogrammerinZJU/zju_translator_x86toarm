	.text
	.globl	get_data_part                   # -- Begin function get_data_part
	.p2align	4, 0x90
get_data_part:                          # @get_data_part
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	$1, (%rdi)
	movl	32(%rax), %eax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %eax
	imull	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	subl	%edx, %ecx
	movl	%ecx, 32(%rdi)
	movl	8(%rax), %eax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %eax
	imull	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	subl	%edx, %ecx
	movl	%ecx, 8(%rdi)
	movl	48(%rax), %ecx
	movl	%ecx, 48(%rdi)
	movl	24(%rax), %ecx
	movl	%ecx, 24(%rdi)
	movq	40(%rax), %rcx
	movl	32(%rax), %eax
	imull	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 40(%rdi)
	movq	16(%rax), %rcx
	movl	8(%rax), %eax
	imull	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %edx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 16(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig