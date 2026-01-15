	.text
	.globl	buf_write                       # -- Begin function buf_write
	.p2align	4, 0x90
buf_write:                              # @buf_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	realloc_body@PLT
.LBB0_2:
	movb	-9(%rbp), %dl
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, 8(%rsi)
	movb	%dl, (%rax,%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc_body