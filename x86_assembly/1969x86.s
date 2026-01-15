	.text
	.globl	jq_parse                        # -- Begin function jq_parse
	.p2align	4, 0x90
jq_parse:                               # @jq_parse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-24(%rbp), %rsi
	xorl	%edi, %edi
	callq	jq_yylex_init_extra@PLT
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	-24(%rbp), %edx
	callq	jq_yy_scan_bytes@PLT
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-24(%rbp), %rcx
	callq	yyparse@PLT
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	jq_yy_delete_buffer@PLT
	movl	-24(%rbp), %edi
	callq	jq_yylex_destroy@PLT
	cmpl	$0, -32(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	block_free@PLT
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_2:
	movl	-32(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_yylex_init_extra
	.addrsig_sym jq_yy_scan_bytes
	.addrsig_sym gen_noop
	.addrsig_sym yyparse
	.addrsig_sym jq_yy_delete_buffer
	.addrsig_sym jq_yylex_destroy
	.addrsig_sym block_free