	.text
	.p2align	4, 0x90                         # -- Begin function die
die:                                    # @die
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	stderr(%rip), %edi
	movq	progname(%rip), %rdx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movl	stderr(%rip), %edi
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movl	$2, %edi
	callq	exit@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Use %s --help for help with command-line options,\n"
	.bss
	.globl	progname
	.p2align	3
progname:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"or see the jq manpage, or online docs  at https://stedolan.github.io/jq\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym die
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
	.addrsig_sym progname