	.text
	.p2align	4, 0x90                         # -- Begin function read_declarator_tail
read_declarator_tail:                   # @read_declarator_tail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$91, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	read_declarator_array@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	$40, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	read_declarator_func@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator_tail
	.addrsig_sym next_token
	.addrsig_sym read_declarator_array
	.addrsig_sym read_declarator_func