	.text
	.globl	socknext                        # -- Begin function socknext
	.p2align	4, 0x90
socknext:                               # @socknext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	leaq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	movl	epfd(%rip), %edi
	movl	-20(%rbp), %eax
	movl	$1000000, %ecx                  # imm = 0xF4240
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	callq	epoll_wait@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_3
# %bb.1:
	movq	errno(%rip), %rax
	cmpq	EINTR(%rip), %rax
	je	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_3:
	cmpl	$0, -24(%rbp)
	jle	.LBB0_13
# %bb.4:
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-40(%rbp), %eax
	movl	EPOLLHUP(%rip), %ecx
	orl	EPOLLRDHUP(%rip), %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movl	$104, -4(%rbp)
	jmp	.LBB0_14
.LBB0_6:
	movl	-40(%rbp), %eax
	andl	EPOLLIN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.7:
	movl	$114, -4(%rbp)
	jmp	.LBB0_14
.LBB0_8:
	movl	-40(%rbp), %eax
	andl	EPOLLOUT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.9:
	movl	$119, -4(%rbp)
	jmp	.LBB0_14
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	movl	$0, -4(%rbp)
.LBB0_14:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	epfd
	.p2align	2
epfd:
	.long	0                               # 0x0
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.globl	EINTR
	.p2align	3
EINTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"epoll_wait"
	.bss
	.globl	EPOLLHUP
	.p2align	2
EPOLLHUP:
	.long	0                               # 0x0
	.globl	EPOLLRDHUP
	.p2align	2
EPOLLRDHUP:
	.long	0                               # 0x0
	.globl	EPOLLIN
	.p2align	2
EPOLLIN:
	.long	0                               # 0x0
	.globl	EPOLLOUT
	.p2align	2
EPOLLOUT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epoll_wait
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym epfd
	.addrsig_sym errno
	.addrsig_sym EINTR
	.addrsig_sym EPOLLHUP
	.addrsig_sym EPOLLRDHUP
	.addrsig_sym EPOLLIN
	.addrsig_sym EPOLLOUT