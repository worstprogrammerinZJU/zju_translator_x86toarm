	.text
	.p2align	4, 0x90                         # -- Begin function stbi__hdr_test
stbi__hdr_test:                         # @stbi__hdr_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	stbi__hdr_test_core@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__rewind@PLT
	cmpl	$0, -12(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__hdr_test_core@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__rewind@PLT
.LBB0_2:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#?RADIANCE\n"
.L.str.1:
	.asciz	"#?RGBE\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__hdr_test_core
	.addrsig_sym stbi__rewind