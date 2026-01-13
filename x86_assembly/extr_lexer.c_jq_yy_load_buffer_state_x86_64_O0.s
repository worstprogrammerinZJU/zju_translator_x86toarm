	.text
	.p2align	4, 0x90                         # -- Begin function yy_load_buffer_state
yy_load_buffer_state:                   # @yy_load_buffer_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	YY_CURRENT_BUFFER_LVALUE(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, yyin(%rip)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.quad	0
	.globl	yyin
	.p2align	2
yyin:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE
	.addrsig_sym yyin