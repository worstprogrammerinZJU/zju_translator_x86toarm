	.text
	.globl	train_network                   # -- Begin function train_network
	.p2align	4, 0x90
train_network:                          # @train_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	cltd
	idivl	(%rcx)
	cmpl	$0, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -24(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %esi
	movl	-28(%rbp), %edx
	imull	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	movl	-8(%rbp), %edi
	callq	get_next_batch@PLT
	movq	-16(%rbp), %rdi
	callq	train_network_datum@PLT
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	-24(%rbp), %eax
	imull	-20(%rbp), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_next_batch
	.addrsig_sym train_network_datum