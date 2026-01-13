	.text
	.p2align	4, 0x90                         # -- Begin function yy_init_buffer
yy_init_buffer:                         # @yy_init_buffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	errno(%rip), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	yy_flush_buffer@PLT
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	cmpq	YY_CURRENT_BUFFER(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB0_2:
	cmpq	$0, -16(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	fileno@PLT
	movl	%eax, %edi
	callq	isatty@PLT
	cmpq	$0, %rax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_5:
	movl	-44(%rbp), %ecx                 # 4-byte Reload
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-28(%rbp), %eax
	movl	%eax, errno(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.globl	YY_CURRENT_BUFFER
	.p2align	3
YY_CURRENT_BUFFER:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_init_buffer
	.addrsig_sym yy_flush_buffer
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym errno
	.addrsig_sym YY_CURRENT_BUFFER