	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movb	$0, %al
	callq	testmain@PLT
	movl	stdout(%rip), %edi
	callq	fileno@PLT
	movl	%eax, %edi
	callq	isatty@PLT
	movq	%rax, %rcx
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str(%rip), %rax
	cmpq	$0, %rcx
	cmovneq	%rax, %rdi
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[32mOK\033[0m\n"
.L.str.1:
	.asciz	"OK\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym testmain
	.addrsig_sym printf
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym stdout