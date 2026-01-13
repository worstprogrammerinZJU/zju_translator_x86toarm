	.text
	.globl	signalHandler                   # -- Begin function signalHandler
	.p2align	4, 0x90
signalHandler:                          # @signalHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	SIGFPE(%rip), %edi
	leaq	signalHandler(%rip), %rsi
	callq	signal@PLT
	movl	preserve(%rip), %edi
	movl	-4(%rbp), %esi
	callq	longjmp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SIGFPE
	.p2align	2
SIGFPE:
	.long	0                               # 0x0
	.globl	preserve
	.p2align	2
preserve:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym signalHandler
	.addrsig_sym signal
	.addrsig_sym longjmp
	.addrsig_sym SIGFPE
	.addrsig_sym preserve