	.text
	.p2align	4, 0x90                         # -- Begin function isoptish
isoptish:                               # @isoptish
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$45, %ecx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rax
	movsbl	1(%rax), %ecx
	movb	$1, %al
	cmpl	$45, %ecx
	movb	%al, -10(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	isalpha@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -10(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-10(%rbp), %al                  # 1-byte Reload
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_4:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isoptish
	.addrsig_sym isalpha