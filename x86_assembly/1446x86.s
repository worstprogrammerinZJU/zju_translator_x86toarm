	.text
	.globl	yy_delete_buffer                # -- Begin function yy_delete_buffer
	.p2align	4, 0x90
yy_delete_buffer:                       # @yy_delete_buffer
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
	movq	-8(%rbp), %rax
	cmpq	YY_CURRENT_BUFFER(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	$0, YY_CURRENT_BUFFER_LVALUE(%rip)
.LBB0_4:
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	yyfree@PLT
.LBB0_6:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	yyfree@PLT
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
	.quad	0
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyfree
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE