	.text
	.globl	cttest_pause                    # -- Begin function cttest_pause
	.p2align	4, 0x90
cttest_pause:                           # @cttest_pause
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	mustdiallocal@PLT
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
	movb	$0, %al
	callq	nanoseconds@PLT
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckresp@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	ckresp@PLT
	movb	$0, %al
	callq	nanoseconds@PLT
	subl	-4(%rbp), %eax
	cmpl	$1000000000, %eax               # imm = 0x3B9ACA00
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 0 1\r\n"
.L.str.1:
	.asciz	"x\r\n"
.L.str.2:
	.asciz	"INSERTED 1\r\n"
.L.str.3:
	.asciz	"pause-tube default 1\r\n"
.L.str.4:
	.asciz	"PAUSED\r\n"
.L.str.5:
	.asciz	"reserve\r\n"
.L.str.6:
	.asciz	"RESERVED 1 1\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym nanoseconds
	.addrsig_sym assert