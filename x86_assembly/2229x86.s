	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_get_bit
stbi__jpeg_get_bit:                     # @stbi__jpeg_get_bit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	stbi__grow_buffer_unsafe@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movl	-12(%rbp), %eax
	andl	$-2147483648, %eax              # imm = 0x80000000
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_get_bit
	.addrsig_sym stbi__grow_buffer_unsafe