	.text
	.globl	read_file                       # -- Begin function read_file
	.p2align	4, 0x90
read_file:                              # @read_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	SEEK_END(%rip), %edx
	xorl	%esi, %esi
	callq	fseek@PLT
	movq	-16(%rbp), %rdi
	callq	ftell@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	SEEK_SET(%rip), %edx
	xorl	%esi, %esi
	callq	fseek@PLT
	movq	-24(%rbp), %rdi
	addq	$1, %rdi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	$1, %esi
	callq	fread@PLT
	movq	-16(%rbp), %rdi
	callq	fclose@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.bss
	.globl	SEEK_END
	.p2align	2
SEEK_END:
	.long	0                               # 0x0
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym fseek
	.addrsig_sym ftell
	.addrsig_sym calloc
	.addrsig_sym fread
	.addrsig_sym fclose
	.addrsig_sym SEEK_END
	.addrsig_sym SEEK_SET