	.text
	.p2align	4, 0x90                         # -- Begin function stbi__bmp_info
stbi__bmp_info:                         # @stbi__bmp_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$255, -64(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	stbi__bmp_parse_header@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	cmpq	$0, -48(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:
	cmpq	$0, -32(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_6:
	cmpq	$0, -40(%rbp)
	je	.LBB0_8
# %bb.7:
	movq	-56(%rbp), %rdx
	movl	$3, %ecx
	movl	$4, %eax
	cmpq	$0, %rdx
	cmovnel	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_8:
	movl	$1, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bmp_info
	.addrsig_sym stbi__bmp_parse_header
	.addrsig_sym stbi__rewind