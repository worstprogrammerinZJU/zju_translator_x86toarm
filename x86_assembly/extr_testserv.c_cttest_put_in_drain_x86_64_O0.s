	.text
	.globl	cttest_put_in_drain             # -- Begin function cttest_put_in_drain
	.p2align	4, 0x90
cttest_put_in_drain:                    # @cttest_put_in_drain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	SIGUSR1(%rip), %edi
	callq	enter_drain_mode@PLT
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
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	ckresp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SIGUSR1
	.p2align	2
SIGUSR1:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 1 1\r\n"
.L.str.1:
	.asciz	"x\r\n"
.L.str.2:
	.asciz	"DRAINING\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym enter_drain_mode
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym SIGUSR1