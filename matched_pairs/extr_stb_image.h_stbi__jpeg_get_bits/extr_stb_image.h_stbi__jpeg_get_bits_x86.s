	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_get_bits
stbi__jpeg_get_bits:                    # @stbi__jpeg_get_bits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	stbi__grow_buffer_unsafe@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movl	-12(%rbp), %esi
	callq	stbi_lrot@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movq	stbi__bmask(%rip), %rax
	movslq	-12(%rbp), %rdx
	movl	(%rax,%rdx,4), %eax
	xorl	$-1, %eax
	andl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	stbi__bmask(%rip), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	andl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__bmask
	.p2align	3
stbi__bmask:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_get_bits
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi_lrot
	.addrsig_sym stbi__bmask