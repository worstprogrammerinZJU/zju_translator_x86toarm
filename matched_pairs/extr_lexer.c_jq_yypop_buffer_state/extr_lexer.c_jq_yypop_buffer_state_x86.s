	.text
	.globl	yypop_buffer_state              # -- Begin function yypop_buffer_state
	.p2align	4, 0x90
yypop_buffer_state:                     # @yypop_buffer_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, YY_CURRENT_BUFFER(%rip)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_6
.LBB0_2:
	movq	YY_CURRENT_BUFFER(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	yy_delete_buffer@PLT
	movq	$0, YY_CURRENT_BUFFER_LVALUE(%rip)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jle	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
.LBB0_4:
	cmpq	$0, YY_CURRENT_BUFFER(%rip)
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	callq	yy_load_buffer_state@PLT
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
.LBB0_6:
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
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE