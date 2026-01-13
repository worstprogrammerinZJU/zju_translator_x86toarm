	.text
	.globl	locfile_get_line                # -- Begin function locfile_get_line
	.p2align	4, 0x90
locfile_get_line:                       # @locfile_get_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$1, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	setl	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-16(%rbp), %eax
	subl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert