	.text
	.p2align	4, 0x90                         # -- Begin function base64_decode_chars_signed
base64_decode_chars_signed:             # @base64_decode_chars_signed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-28(%rbp), %rdi
	callq	base64_init_decodestate@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	callq	base64_decode_block_signed@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
.LBB0_2:
	movl	-32(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_decode_chars_signed
	.addrsig_sym base64_init_decodestate
	.addrsig_sym base64_decode_block_signed