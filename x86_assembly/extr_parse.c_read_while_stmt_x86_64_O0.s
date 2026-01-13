	.text
	.p2align	4, 0x90                         # -- Begin function read_while_stmt
read_while_stmt:                        # @read_while_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_boolean_expr@PLT
	movq	%rax, -8(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SET_JUMP_LABELS@PLT
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -32(%rbp)
	movb	$0, %al
	callq	RESTORE_JUMP_LABELS@PLT
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	ast_jump@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	ast_if@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	ast_jump@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	ast_dest@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movq	-40(%rbp), %rdi
	callq	ast_compound_stmt@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_while_stmt
	.addrsig_sym expect
	.addrsig_sym read_boolean_expr
	.addrsig_sym make_label
	.addrsig_sym SET_JUMP_LABELS
	.addrsig_sym read_stmt
	.addrsig_sym RESTORE_JUMP_LABELS
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_dest
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym ast_compound_stmt