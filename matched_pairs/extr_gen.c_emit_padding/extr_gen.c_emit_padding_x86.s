	.text
	.p2align	4, 0x90                         # -- Begin function emit_padding
emit_padding:                           # @emit_padding
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-16(%rbp), %edi
	callq	emit_zero@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_padding
	.addrsig_sym assert
	.addrsig_sym emit_zero
	.addrsig_sym SAVE