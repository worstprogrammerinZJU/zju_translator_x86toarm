	.text
	.globl	hold_out_matrix                 # -- Begin function hold_out_matrix
	.p2align	4, 0x90
hold_out_matrix:                        # @hold_out_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, (%rdi)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, 16(%rdi)
	movl	(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 8(%rdi)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	rand@PLT
	movq	-8(%rbp), %rcx
	cltd
	idivl	(%rcx)
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	(%rdx), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rdx)
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand