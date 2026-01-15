	.text
	.p2align	4, 0x90                         # -- Begin function mustdialunix
mustdialunix:                           # @mustdialunix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$4, -24(%rbp)
	movl	AF_UNIX(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rcx
	movl	$4, %esi
	leaq	.L.str(%rip), %rdx
	callq	snprintf@PLT
	movl	AF_UNIX(%rip), %edi
	movl	SOCK_STREAM(%rip), %esi
	xorl	%edx, %edx
	callq	socket@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str.1(%rip), %rdi
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	movl	-28(%rbp), %edi
	leaq	-16(%rbp), %rsi
	movl	$8, %edx
	callq	connect@PLT
	movl	%eax, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.2(%rip), %rdi
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_4:
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AF_UNIX
	.p2align	2
AF_UNIX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.bss
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"socket"
.L.str.2:
	.asciz	"connect"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustdialunix
	.addrsig_sym snprintf
	.addrsig_sym socket
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym connect
	.addrsig_sym AF_UNIX
	.addrsig_sym SOCK_STREAM