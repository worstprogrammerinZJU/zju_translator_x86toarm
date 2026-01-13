	.text
	.globl	forward_dropout_layer           # -- Begin function forward_dropout_layer
	.p2align	4, 0x90
forward_dropout_layer:                  # @forward_dropout_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_9
.LBB0_2:
	movl	$0, -20(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	movl	(%rdx), %ecx
	imull	4(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movl	$1, %esi
	callq	rand_uniform@PLT
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movss	%xmm0, -24(%rbp)
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	8(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movss	%xmm0, (%rcx,%rdx,4)
	movss	-24(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	16(%rax), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	20(%rax), %edx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imull	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand_uniform