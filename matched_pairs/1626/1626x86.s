	.text
	.p2align	4, 0x90                         # -- Begin function span
span:                                   # @span
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strspn@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym span
	.addrsig_sym strspn