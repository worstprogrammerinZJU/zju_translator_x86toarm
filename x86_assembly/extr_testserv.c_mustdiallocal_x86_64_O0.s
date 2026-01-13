	.text
	.p2align	4, 0x90                         # -- Begin function mustdiallocal
mustdiallocal:                          # @mustdiallocal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	htons@PLT
	movl	%eax, -12(%rbp)
	movl	AF_INET(%rip), %eax
	movl	%eax, -8(%rbp)
	leaq	-16(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	inet_aton@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	EINVAL(%rip), %eax
	movl	%eax, errno(%rip)
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	movl	AF_INET(%rip), %edi
	movl	SOCK_STREAM(%rip), %esi
	xorl	%edx, %edx
	callq	socket@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_4:
	movl	$1, -28(%rbp)
	movl	-24(%rbp), %edi
	movl	IPPROTO_TCP(%rip), %esi
	movl	TCP_NODELAY(%rip), %edx
	leaq	-28(%rbp), %rcx
	movl	$4, %r8d
	callq	setsockopt@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movl	-24(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_6:
	movl	-24(%rbp), %edi
	leaq	-16(%rbp), %rsi
	movl	$12, %edx
	callq	connect@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_8
# %bb.7:
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_8:
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AF_INET
	.p2align	2
AF_INET:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"127.0.0.1"
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"inet_aton"
	.bss
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"socket"
	.bss
	.globl	IPPROTO_TCP
	.p2align	2
IPPROTO_TCP:
	.long	0                               # 0x0
	.globl	TCP_NODELAY
	.p2align	2
TCP_NODELAY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"setting TCP_NODELAY on fd %d"
.L.str.4:
	.asciz	"connect"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustdiallocal
	.addrsig_sym htons
	.addrsig_sym inet_aton
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym socket
	.addrsig_sym setsockopt
	.addrsig_sym connect
	.addrsig_sym AF_INET
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym SOCK_STREAM
	.addrsig_sym IPPROTO_TCP
	.addrsig_sym TCP_NODELAY