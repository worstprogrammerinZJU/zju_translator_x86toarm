	.text
	.p2align	4, 0x90                         # -- Begin function stbi__stdio_skip
stbi__stdio_skip:                       # @stbi__stdio_skip
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	SEEK_CUR(%rip), %edx
	callq	fseek@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SEEK_CUR
	.p2align	2
SEEK_CUR:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__stdio_skip
	.addrsig_sym fseek
	.addrsig_sym SEEK_CUR