	.text
	.p2align	4, 0x90                         # -- Begin function set_sig_handler
set_sig_handler:                        # @set_sig_handler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	-16(%rbp), %rdi
	addq	$4, %rdi
	callq	sigemptyset@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$111, %edi
	callq	exit@PLT
.LBB0_2:
	movl	exit_process(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	SIGTERM(%rip), %edi
	leaq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	sigaction@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	twarn@PLT
	movl	$111, %edi
	callq	exit@PLT
.LBB0_4:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sigemptyset()"
	.bss
	.globl	exit_process
	.p2align	2
exit_process:
	.long	0                               # 0x0
	.globl	SIGTERM
	.p2align	2
SIGTERM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"sigaction(SIGTERM)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_sig_handler
	.addrsig_sym sigemptyset
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym sigaction
	.addrsig_sym exit_process
	.addrsig_sym SIGTERM