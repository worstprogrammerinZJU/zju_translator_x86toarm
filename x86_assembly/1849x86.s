	.text
	.p2align	4, 0x90                         # -- Begin function read_additive_expr
read_additive_expr:                     # @read_additive_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_multiplicative_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$43, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	read_multiplicative_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$43, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$45, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	read_multiplicative_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-16(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$45, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_additive_expr
	.addrsig_sym read_multiplicative_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv