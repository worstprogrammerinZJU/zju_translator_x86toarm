	.text
	.p2align	4, 0x90                         # -- Begin function propagate_space
propagate_space:                        # @propagate_space
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	vec_head@PLT
	movl	%eax, %edi
	callq	copy_token@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	xorl	%esi, %esi
	callq	vec_set@PLT
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym propagate_space
	.addrsig_sym vec_len
	.addrsig_sym copy_token
	.addrsig_sym vec_head
	.addrsig_sym vec_set