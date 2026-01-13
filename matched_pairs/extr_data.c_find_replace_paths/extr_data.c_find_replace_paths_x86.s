	.text
	.globl	find_replace_paths              # -- Begin function find_replace_paths
	.p2align	4, 0x90
find_replace_paths:                     # @find_replace_paths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$4144, %rsp                     # imm = 0x1030
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	leaq	-4144(%rbp), %rcx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	callq	copy_string@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rax
	addq	$4144, %rsp                     # imm = 0x1030
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym find_replace
	.addrsig_sym copy_string