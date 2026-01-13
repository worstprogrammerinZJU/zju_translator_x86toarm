	.text
	.p2align	4, 0x90                         # -- Begin function read_define
read_define:                            # @read_define
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_ident@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	callq	read_funclike_macro@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	read_obj_macro@PLT
.LBB0_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_define
	.addrsig_sym read_ident
	.addrsig_sym lex
	.addrsig_sym is_keyword
	.addrsig_sym read_funclike_macro
	.addrsig_sym unget_token
	.addrsig_sym read_obj_macro