	.text
	.p2align	4, 0x90                         # -- Begin function inst_join
inst_join:                              # @inst_join
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -8(%rbp)
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	cmpq	$0, -16(%rbp)
	setne	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-17(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_join
	.addrsig_sym assert