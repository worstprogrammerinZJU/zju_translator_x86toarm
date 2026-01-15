	.text
	.p2align	4, 0x90                         # -- Begin function emit_goto
emit_goto:                              # @emit_goto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	emit_jmp@PLT
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
	.addrsig_sym emit_goto
	.addrsig_sym assert
	.addrsig_sym emit_jmp
	.addrsig_sym SAVE