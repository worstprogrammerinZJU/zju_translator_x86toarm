	.text
	.globl	stack_popn                      # -- Begin function stack_popn
	.p2align	4, 0x90
stack_popn:                             # @stack_popn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	stack_block@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	stack_pop_will_free@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_2:
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	$4, %edx
	callq	stack_pop_block@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-20(%rbp), %edi
	callq	jv_is_valid@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_block
	.addrsig_sym stack_pop_will_free
	.addrsig_sym jv_null
	.addrsig_sym stack_pop_block
	.addrsig_sym assert
	.addrsig_sym jv_is_valid