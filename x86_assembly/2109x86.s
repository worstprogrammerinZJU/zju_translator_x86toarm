	.text
	.globl	forward_route_layer             # -- Begin function forward_route_layer
	.p2align	4, 0x90
forward_route_layer:                    # @forward_route_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -32(%rbp)
	movq	16(%rax), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -16(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movl	-16(%rbp), %eax
	cmpl	24(%rcx), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	-16(%rbp), %eax
	imull	-36(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movq	32(%rdx), %rcx
	movslq	-20(%rbp), %rax
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	imull	28(%rdx), %eax
	cltq
	addq	%rax, %rcx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu