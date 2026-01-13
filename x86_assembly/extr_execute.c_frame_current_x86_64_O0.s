	.text
	.p2align	4, 0x90                         # -- Begin function frame_current
frame_current:                          # @frame_current
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	stack_block@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	stack_block_next@PLT
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	stack_block@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	(%rdx), %rcx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jl	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-40(%rbp), %rdx
	addq	8(%rdx), %rcx
	cmpq	%rcx, %rax
	setl	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_5:
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_current
	.addrsig_sym stack_block
	.addrsig_sym stack_block_next
	.addrsig_sym assert