	.text
	.globl	vec_copy                        # -- Begin function vec_copy
	.p2align	4, 0x90
vec_copy:                               # @vec_copy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	do_make_vector@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movq	-8(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$3, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_make_vector
	.addrsig_sym memcpy