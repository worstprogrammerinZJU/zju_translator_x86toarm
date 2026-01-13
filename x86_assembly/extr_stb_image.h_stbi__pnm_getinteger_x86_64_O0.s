	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pnm_getinteger
stbi__pnm_getinteger:                   # @stbi__pnm_getinteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	stbi__at_eof@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	stbi__pnm_isdigit@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-21(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	imull	$10, -20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %ecx
	subl	$48, %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB0_1
.LBB0_5:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_getinteger
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__pnm_isdigit
	.addrsig_sym stbi__get8