	.text
	.p2align	4, 0x90                         # -- Begin function stbi__start_write_file
stbi__start_write_file:                 # @stbi__start_write_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	stbi__stdio_write(%rip), %esi
	movq	-24(%rbp), %rdx
	callq	stbi__start_write_callbacks@PLT
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wb"
	.bss
	.globl	stbi__stdio_write
	.p2align	2
stbi__stdio_write:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__start_write_file
	.addrsig_sym fopen
	.addrsig_sym stbi__start_write_callbacks
	.addrsig_sym stbi__stdio_write