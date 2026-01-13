	.text
	.p2align	4, 0x90                         # -- Begin function jvp_string_remaining_space
jvp_string_remaining_space:             # @jvp_string_remaining_space
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	jvp_string_length@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	jvp_string_length@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_remaining_space
	.addrsig_sym assert
	.addrsig_sym jvp_string_length