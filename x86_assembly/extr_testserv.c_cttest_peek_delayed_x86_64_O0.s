	.text
	.globl	cttest_peek_delayed             # -- Begin function cttest_peek_delayed
	.p2align	4, 0x90
cttest_peek_delayed:                    # @cttest_peek_delayed
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
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.8(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.9(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.10(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.11(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.9(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.12(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.13(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.14(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.15(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.13(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	ckresp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"peek-delayed\r\n"
.L.str.1:
	.asciz	"NOT_FOUND\r\n"
.L.str.2:
	.asciz	"put 0 0 1 1\r\n"
.L.str.3:
	.asciz	"A\r\n"
.L.str.4:
	.asciz	"INSERTED 1\r\n"
.L.str.5:
	.asciz	"put 0 99 1 1\r\n"
.L.str.6:
	.asciz	"B\r\n"
.L.str.7:
	.asciz	"INSERTED 2\r\n"
.L.str.8:
	.asciz	"put 0 1 1 1\r\n"
.L.str.9:
	.asciz	"C\r\n"
.L.str.10:
	.asciz	"INSERTED 3\r\n"
.L.str.11:
	.asciz	"FOUND 3 1\r\n"
.L.str.12:
	.asciz	"delete 3\r\n"
.L.str.13:
	.asciz	"DELETED\r\n"
.L.str.14:
	.asciz	"FOUND 2 1\r\n"
.L.str.15:
	.asciz	"delete 2\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp