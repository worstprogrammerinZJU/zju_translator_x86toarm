	.text
	.p2align	4, 0x90                         # -- Begin function stbi__mad4sizes_valid
stbi__mad4sizes_valid:                  # @stbi__mad4sizes_valid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	stbi__mul2sizes_valid@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.1:
	movl	-4(%rbp), %edi
	imull	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	stbi__mul2sizes_valid@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.2:
	movl	-4(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	stbi__mul2sizes_valid@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.3:
	movl	-4(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-12(%rbp), %edi
	imull	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	stbi__addsizes_valid@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB0_4:
	movb	-21(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__mad4sizes_valid
	.addrsig_sym stbi__mul2sizes_valid
	.addrsig_sym stbi__addsizes_valid