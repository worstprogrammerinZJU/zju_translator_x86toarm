	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pnm_skip_whitespace
stbi__pnm_skip_whitespace:              # @stbi__pnm_skip_whitespace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	jmp	.LBB0_2
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	stbi__at_eof@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	stbi__pnm_isspace@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=2
	movb	-17(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=2
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB0_2
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	stbi__at_eof@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$35, %eax
	je	.LBB0_9
.LBB0_8:
	jmp	.LBB0_16
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	stbi__at_eof@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -18(%rbp)                  # 1-byte Spill
	jne	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$10, %ecx
	movb	%al, -18(%rbp)                  # 1-byte Spill
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$13, %eax
	setne	%al
	movb	%al, -18(%rbp)                  # 1-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=2
	movb	-18(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB0_10
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_16:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_skip_whitespace
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__pnm_isspace
	.addrsig_sym stbi__get8