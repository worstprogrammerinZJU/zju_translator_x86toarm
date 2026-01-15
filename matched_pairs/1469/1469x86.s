	.text
	.globl	yypush_buffer_state             # -- Begin function yypush_buffer_state
	.p2align	4, 0x90
yypush_buffer_state:                    # @yypush_buffer_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_7
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	yyensure_buffer_stack@PLT
	cmpq	$0, YY_CURRENT_BUFFER(%rip)
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	%ecx, (%rax)
.LBB0_4:
	cmpq	$0, YY_CURRENT_BUFFER(%rip)
	je	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
.LBB0_6:
	movq	-8(%rbp), %rax
	movq	%rax, YY_CURRENT_BUFFER_LVALUE(%rip)
	movq	-16(%rbp), %rdi
	callq	yy_load_buffer_state@PLT
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBB0_7:
	addq	$32, %rsp
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
	.addrsig_sym yyensure_buffer_stack
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE