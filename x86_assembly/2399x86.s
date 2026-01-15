	.text
	.globl	printfail                       # -- Begin function printfail
	.p2align	4, 0x90
printfail:                              # @printfail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
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
	.asciz	"\033[1;31mFailed\033[0m\n"
.L.str.1:
	.asciz	"Failed\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym stdout