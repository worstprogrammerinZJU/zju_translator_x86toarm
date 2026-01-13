	.text
	.globl	jvp_dtoa_context_free           # -- Begin function jvp_dtoa_context_free
	.p2align	4, 0x90
jvp_dtoa_context_free:                  # @jvp_dtoa_context_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Bfree@PLT
	jmp	.LBB0_1
.LBB0_3:
	movl	$0, -12(%rbp)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	cmpl	$1, -12(%rbp)
	jge	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-32(%rbp), %rdi
	callq	FREE@PLT
	jmp	.LBB0_6
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_4
.LBB0_10:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Bfree
	.addrsig_sym FREE