	.text
	.p2align	4, 0x90                         # -- Begin function read_multiplicative_expr
read_multiplicative_expr:               # @read_multiplicative_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$42, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$47, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-16(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$47, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$37, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-20(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$37, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_multiplicative_expr
	.addrsig_sym read_cast_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv