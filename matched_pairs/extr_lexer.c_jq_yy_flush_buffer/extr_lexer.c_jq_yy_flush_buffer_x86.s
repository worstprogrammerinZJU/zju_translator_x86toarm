	.text
	.globl	yy_flush_buffer                 # -- Begin function yy_flush_buffer
	.p2align	4, 0x90
yy_flush_buffer:                        # @yy_flush_buffer
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
	jmp	.LBB0_4
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	YY_END_OF_BUFFER_CHAR(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, (%rax)
	movq	YY_END_OF_BUFFER_CHAR(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movl	YY_BUFFER_NEW(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	cmpq	YY_CURRENT_BUFFER(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	yy_load_buffer_state@PLT
.LBB0_4:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_END_OF_BUFFER_CHAR
	.p2align	3
YY_END_OF_BUFFER_CHAR:
	.quad	0
	.globl	YY_BUFFER_NEW
	.p2align	2
YY_BUFFER_NEW:
	.long	0                               # 0x0
	.globl	YY_CURRENT_BUFFER
	.p2align	3
YY_CURRENT_BUFFER:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_END_OF_BUFFER_CHAR
	.addrsig_sym YY_BUFFER_NEW
	.addrsig_sym YY_CURRENT_BUFFER