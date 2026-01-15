	.text
	.p2align	4, 0x90                         # -- Begin function read_decl_init
read_decl_init:                         # @read_decl_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	movl	$123, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	is_string@PLT
	cmpq	$0, %rax
	je	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	read_initializer_list@PLT
	jmp	.LBB0_7
.LBB0_3:
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movl	%eax, %edi
	callq	conv@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, -24(%rbp)
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	xorl	%edx, %edx
	callq	ast_init@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
.LBB0_7:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl_init
	.addrsig_sym make_vector
	.addrsig_sym is_keyword
	.addrsig_sym peek
	.addrsig_sym is_string
	.addrsig_sym read_initializer_list
	.addrsig_sym conv
	.addrsig_sym read_assignment_expr
	.addrsig_sym is_arithtype
	.addrsig_sym ast_conv
	.addrsig_sym vec_push
	.addrsig_sym ast_init