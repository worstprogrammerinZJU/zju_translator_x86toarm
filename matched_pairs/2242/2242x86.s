	.text
	.p2align	4, 0x90                         # -- Begin function stbi__mad2sizes_valid
stbi__mad2sizes_valid:                  # @stbi__mad2sizes_valid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	stbi__mul2sizes_valid@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %edi
	imull	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	stbi__addsizes_valid@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__mad2sizes_valid
	.addrsig_sym stbi__mul2sizes_valid
	.addrsig_sym stbi__addsizes_valid