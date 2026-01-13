	.text
	.globl	deinter_cpu                     # -- Begin function deinter_cpu
	.p2align	4, 0x90
deinter_cpu:                            # @deinter_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -52(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-4(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -52(%rbp)
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-20(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig