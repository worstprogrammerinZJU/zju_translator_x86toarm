	.text
	.p2align	4, 0x90                         # -- Begin function is_valid_tube
is_valid_tube:                          # @is_valid_tube
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-24(%rbp), %rcx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jae	.LBB0_4
# %bb.1:
	movq	-24(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-16(%rbp), %rcx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	ja	.LBB0_4
# %bb.2:
	movq	-8(%rbp), %rdi
	movl	NAME_CHARS(%rip), %esi
	callq	strspn@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	-24(%rbp), %rcx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	setne	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_4:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NAME_CHARS
	.p2align	2
NAME_CHARS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_valid_tube
	.addrsig_sym strlen
	.addrsig_sym strspn
	.addrsig_sym NAME_CHARS