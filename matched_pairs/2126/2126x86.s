	.text
	.globl	backward_shortcut_layer         # -- Begin function backward_shortcut_layer
	.p2align	4, 0x90
backward_shortcut_layer:                # @backward_shortcut_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	leaq	16(%rbp), %r14
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movl	56(%r14), %edi
	movl	(%r14), %esi
	imull	4(%r14), %esi
	movl	52(%r14), %edx
	movl	32(%r14), %ecx
	callq	gradient_array@PLT
	movl	(%r14), %edi
	imull	4(%r14), %edi
	movl	48(%r14), %esi
	movl	32(%r14), %edx
	movl	-24(%rbp), %r8d
	movl	$1, %r9d
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
	movl	4(%r14), %edi
	movl	44(%r14), %esi
	movl	40(%r14), %edx
	movl	36(%r14), %ecx
	movl	32(%r14), %r8d
	movl	28(%r14), %r9d
	movl	24(%r14), %ebx
	movl	20(%r14), %r11d
	movl	16(%r14), %r10d
	movq	-32(%rbp), %rax
	movq	8(%r14), %r14
	movl	(%rax,%r14,4), %eax
	movl	%ebx, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	shortcut_cpu@PLT
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym axpy_cpu
	.addrsig_sym shortcut_cpu