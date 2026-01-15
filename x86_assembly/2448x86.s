	.text
	.globl	cttest_peek_ok_unix             # -- Begin function cttest_peek_ok_unix
	.p2align	4, 0x90
cttest_peek_ok_unix:                    # @cttest_peek_ok_unix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	SERVER_UNIX@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	mustdialunix@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	ckresp@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	ckresp@PLT
	movq	-8(%rbp), %rdi
	callq	unlink@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 1 1\r\n"
.L.str.1:
	.asciz	"a\r\n"
.L.str.2:
	.asciz	"INSERTED 1\r\n"
.L.str.3:
	.asciz	"peek 1\r\n"
.L.str.4:
	.asciz	"FOUND 1 1\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER_UNIX
	.addrsig_sym mustdialunix
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym unlink