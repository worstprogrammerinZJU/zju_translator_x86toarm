	.text
	.p2align	4, 0x90                         # -- Begin function emit_fill_holes
emit_fill_holes:                        # @emit_fill_holes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %edi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	cmpinit(%rip), %ecx
	movl	$8, %edx
	callq	qsort@PLT
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	addl	-12(%rbp), %esi
	callq	emit_zero_filler@PLT
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addl	(%rcx), %eax
	movl	%eax, -40(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_5
.LBB0_10:
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	addl	-12(%rbp), %esi
	callq	emit_zero_filler@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cmpinit
	.p2align	2
cmpinit:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_fill_holes
	.addrsig_sym vec_len
	.addrsig_sym malloc
	.addrsig_sym vec_get
	.addrsig_sym qsort
	.addrsig_sym emit_zero_filler
	.addrsig_sym cmpinit