	.text
	.p2align	4, 0x90                         # -- Begin function set_sig_handlers
set_sig_handlers:                       # @set_sig_handlers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	SIG_IGN(%rip), %eax
	movl	%eax, -16(%rbp)
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
	movl	SIGPIPE(%rip), %edi
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
	movl	enter_drain_mode(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	SIGUSR1(%rip), %edi
	leaq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	sigaction@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str.2(%rip), %rdi
	callq	twarn@PLT
	movl	$111, %edi
	callq	exit@PLT
.LBB0_6:
	movb	$0, %al
	callq	getpid@PLT
	cmpl	$1, %eax
	jne	.LBB0_10
# %bb.7:
	movl	handle_sigterm_pid1(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	SIGTERM(%rip), %edi
	leaq	-16(%rbp), %rsi
	xorl	%edx, %edx
	callq	sigaction@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_9
# %bb.8:
	leaq	.L.str.3(%rip), %rdi
	callq	twarn@PLT
	movl	$111, %edi
	callq	exit@PLT
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SIG_IGN
	.p2align	2
SIG_IGN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sigemptyset()"
	.bss
	.globl	SIGPIPE
	.p2align	2
SIGPIPE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"sigaction(SIGPIPE)"
	.bss
	.globl	enter_drain_mode
	.p2align	2
enter_drain_mode:
	.long	0                               # 0x0
	.globl	SIGUSR1
	.p2align	2
SIGUSR1:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"sigaction(SIGUSR1)"
	.bss
	.globl	handle_sigterm_pid1
	.p2align	2
handle_sigterm_pid1:
	.long	0                               # 0x0
	.globl	SIGTERM
	.p2align	2
SIGTERM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"sigaction(SIGTERM)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_sig_handlers
	.addrsig_sym sigemptyset
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym sigaction
	.addrsig_sym getpid
	.addrsig_sym SIG_IGN
	.addrsig_sym SIGPIPE
	.addrsig_sym enter_drain_mode
	.addrsig_sym SIGUSR1
	.addrsig_sym handle_sigterm_pid1
	.addrsig_sym SIGTERM