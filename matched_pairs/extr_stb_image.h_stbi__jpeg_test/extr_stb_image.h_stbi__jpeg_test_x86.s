	.text
	.p2align	4, 0x90                         # -- Begin function stbi__jpeg_test
stbi__jpeg_test:                        # @stbi__jpeg_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$8, %edi
	callq	stbi__malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rdi
	callq	stbi__setup_jpeg@PLT
	movq	-24(%rbp), %rdi
	movl	STBI__SCAN_type(%rip), %esi
	callq	stbi__decode_jpeg_header@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__rewind@PLT
	movq	-24(%rbp), %rdi
	callq	STBI_FREE@PLT
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__SCAN_type
	.p2align	2
STBI__SCAN_type:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_test
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__setup_jpeg
	.addrsig_sym stbi__decode_jpeg_header
	.addrsig_sym stbi__rewind
	.addrsig_sym STBI_FREE
	.addrsig_sym STBI__SCAN_type