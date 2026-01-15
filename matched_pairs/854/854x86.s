	.text
	.p2align	4, 0x90                         # -- Begin function frame_pop
frame_pop:                              # @frame_pop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	callq	frame_current@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	stack_pop_will_free@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	xorl	%edx, %edx
	callq	frame_local_var@PLT
	movl	(%rax), %edi
	callq	jv_free@PLT
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	frame_size@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	stack_pop_block@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_pop
	.addrsig_sym assert
	.addrsig_sym frame_current
	.addrsig_sym stack_pop_will_free
	.addrsig_sym jv_free
	.addrsig_sym frame_local_var
	.addrsig_sym stack_pop_block
	.addrsig_sym frame_size