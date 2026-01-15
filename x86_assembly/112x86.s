	.text
	.globl	dunion                          # -- Begin function dunion
	.p2align	4, 0x90
dunion:                                 # @dunion
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %r8
	leaq	-56(%rbp), %rdi
	callq	dintersect@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rcx
	subq	-40(%rbp), %rcx
	movq	%rcx, 16(%rdi)
	movq	-16(%rbp), %rcx
	subq	-48(%rbp), %rcx
	movq	%rcx, 8(%rdi)
	xorl	%ecx, %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, 4(%rdi)
	xorl	%ecx, %ecx
	subl	-56(%rbp), %ecx
	movl	%ecx, (%rdi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dintersect