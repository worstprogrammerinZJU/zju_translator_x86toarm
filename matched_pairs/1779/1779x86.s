	.text
	.globl	train_network_datum             # -- Begin function train_network_datum
	.p2align	4, 0x90
train_network_datum:                    # @train_network_datum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-8(%rbp), %rdi
	callq	forward_network@PLT
	movq	-8(%rbp), %rdi
	callq	backward_network@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	8(%rcx)
	movq	-8(%rbp), %rcx
	cltd
	idivl	24(%rcx)
	cmpl	$0, %edx
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	update_network@PLT
.LBB0_2:
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym forward_network
	.addrsig_sym backward_network
	.addrsig_sym update_network