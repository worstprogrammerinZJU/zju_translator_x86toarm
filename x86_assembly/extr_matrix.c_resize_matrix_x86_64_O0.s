	.text
	.globl	resize_matrix                   # -- Begin function resize_matrix
	.p2align	4, 0x90
resize_matrix:                          # @resize_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB0_16
.LBB0_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_8
# %bb.3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 8(%rax)
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movslq	-8(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_7:
	jmp	.LBB0_15
.LBB0_8:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jle	.LBB0_14
# %bb.9:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	free@PLT
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_13:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 8(%rax)
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %edx
	movl	%edx, (%rcx)
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
.LBB0_16:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc
	.addrsig_sym calloc
	.addrsig_sym free