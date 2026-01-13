	.text
	.globl	yylex_destroy                   # -- Begin function yylex_destroy
	.p2align	4, 0x90
yylex_destroy:                          # @yylex_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, YY_CURRENT_BUFFER(%rip)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	YY_CURRENT_BUFFER(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	yy_delete_buffer@PLT
	movq	$0, YY_CURRENT_BUFFER_LVALUE(%rip)
	movq	-8(%rbp), %rdi
	callq	yypop_buffer_state@PLT
	jmp	.LBB0_1
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	yyfree@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	yyfree@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rdi
	callq	yy_init_globals@PLT
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	yyfree@PLT
	movq	$0, -8(%rbp)
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	3
YY_CURRENT_BUFFER:
	.quad	0                               # 0x0
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_delete_buffer
	.addrsig_sym yypop_buffer_state
	.addrsig_sym yyfree
	.addrsig_sym yy_init_globals
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE