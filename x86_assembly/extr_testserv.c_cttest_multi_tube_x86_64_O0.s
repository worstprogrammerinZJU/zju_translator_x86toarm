	.text
	.globl	cttest_multi_tube               # -- Begin function cttest_multi_tube
	.p2align	4, 0x90
cttest_multi_tube:                      # @cttest_multi_tube
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.8(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.9(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.10(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.11(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.12(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.13(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.14(%rip), %rsi
	callq	ckresp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"use abc\r\n"
.L.str.1:
	.asciz	"USING abc\r\n"
.L.str.2:
	.asciz	"put 999999 0 0 0\r\n"
.L.str.3:
	.asciz	"\r\n"
.L.str.4:
	.asciz	"INSERTED 1\r\n"
.L.str.5:
	.asciz	"use def\r\n"
.L.str.6:
	.asciz	"USING def\r\n"
.L.str.7:
	.asciz	"put 99 0 0 0\r\n"
.L.str.8:
	.asciz	"INSERTED 2\r\n"
.L.str.9:
	.asciz	"watch abc\r\n"
.L.str.10:
	.asciz	"WATCHING 2\r\n"
.L.str.11:
	.asciz	"watch def\r\n"
.L.str.12:
	.asciz	"WATCHING 3\r\n"
.L.str.13:
	.asciz	"reserve\r\n"
.L.str.14:
	.asciz	"RESERVED 2 0\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp