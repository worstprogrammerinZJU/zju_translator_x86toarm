	.text
	.p2align	4, 0x90                         # -- Begin function nesting_level
nesting_level:                          # @nesting_level
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -8(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -16(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -8(%rbp)
	movb	%al, -26(%rbp)                  # 1-byte Spill
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	setne	%al
	movb	%al, -26(%rbp)                  # 1-byte Spill
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	movb	-26(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_8:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -8(%rbp)
	movb	%al, -27(%rbp)                  # 1-byte Spill
	je	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	movb	%al, -27(%rbp)                  # 1-byte Spill
.LBB0_10:
	movb	-27(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nesting_level
	.addrsig_sym assert