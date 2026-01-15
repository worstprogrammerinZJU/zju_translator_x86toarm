	.text
	.globl	base64_encode_chars             # -- Begin function base64_encode_chars
	.p2align	4, 0x90
base64_encode_chars:                    # @base64_encode_chars
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-28(%rbp), %rdi
	callq	base64_init_encodestate@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	callq	base64_encode_block@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rax
	addq	%rax, %rdi
	leaq	-28(%rbp), %rsi
	callq	base64_encode_blockend@PLT
	movl	%eax, %ecx
	movl	-36(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base64_init_encodestate
	.addrsig_sym base64_encode_block
	.addrsig_sym base64_encode_blockend