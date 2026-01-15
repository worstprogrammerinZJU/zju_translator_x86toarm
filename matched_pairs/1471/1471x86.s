	.text
	.globl	yyrestart                       # -- Begin function yyrestart
	.p2align	4, 0x90
yyrestart:                              # @yyrestart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, YY_CURRENT_BUFFER(%rip)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	yyensure_buffer_stack@PLT
	movl	yyin(%rip), %edi
	movl	YY_BUF_SIZE(%rip), %esi
	movq	-16(%rbp), %rdx
	callq	yy_create_buffer@PLT
	movl	%eax, YY_CURRENT_BUFFER_LVALUE(%rip)
.LBB0_2:
	movl	YY_CURRENT_BUFFER(%rip), %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	yy_init_buffer@PLT
	movq	-16(%rbp), %rdi
	callq	yy_load_buffer_state@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	2
YY_CURRENT_BUFFER:
	.long	0                               # 0x0
	.globl	yyin
	.p2align	2
yyin:
	.long	0                               # 0x0
	.globl	YY_BUF_SIZE
	.p2align	2
YY_BUF_SIZE:
	.long	0                               # 0x0
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	2
YY_CURRENT_BUFFER_LVALUE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyensure_buffer_stack
	.addrsig_sym yy_create_buffer
	.addrsig_sym yy_init_buffer
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym yyin
	.addrsig_sym YY_BUF_SIZE
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE