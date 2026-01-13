	.text
	.p2align	4, 0x90                         # -- Begin function emit_return
emit_return:                            # @emit_return
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	emit_expr@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	callq	maybe_booleanize_retval@PLT
.LBB0_2:
	movb	$0, %al
	callq	emit_ret@PLT
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
	.addrsig_sym emit_return
	.addrsig_sym emit_expr
	.addrsig_sym maybe_booleanize_retval
	.addrsig_sym emit_ret
	.addrsig_sym SAVE