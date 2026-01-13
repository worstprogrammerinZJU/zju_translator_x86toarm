	.text
	.globl	backward_dropout_layer          # -- Begin function backward_dropout_layer
	.p2align	4, 0x90
backward_dropout_layer:                 # @backward_dropout_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_9
.LBB0_2:
	movl	$0, -12(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rcx
	movslq	-12(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	16(%rax), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	imull	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig