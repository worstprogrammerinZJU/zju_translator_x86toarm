	.text
	.globl	make_empty_image                # -- Begin function make_empty_image
	.p2align	4, 0x90
make_empty_image:                       # @make_empty_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movq	$0, 16(%rdi)
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rdi)
	movl	-4(%rbp), %ecx
	movl	%ecx, 4(%rdi)
	movl	-12(%rbp), %ecx
	movl	%ecx, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig