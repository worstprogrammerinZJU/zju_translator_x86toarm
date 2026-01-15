	.text
	.globl	sockwant                        # -- Begin function sockwant
	.p2align	4, 0x90
sockwant:                               # @sockwant
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_15
.LBB0_3:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_6
# %bb.4:
	cmpl	$0, -20(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	EPOLL_CTL_ADD(%rip), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_8
# %bb.7:
	movl	EPOLL_CTL_DEL(%rip), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	EPOLL_CTL_MOD(%rip), %eax
	movl	%eax, -24(%rbp)
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	subl	$114, %eax
	je	.LBB0_12
	jmp	.LBB0_16
.LBB0_16:
	movl	-52(%rbp), %eax                 # 4-byte Reload
	subl	$119, %eax
	je	.LBB0_13
	jmp	.LBB0_14
.LBB0_12:
	movl	EPOLLIN(%rip), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movl	EPOLLOUT(%rip), %eax
	movl	%eax, -48(%rbp)
.LBB0_14:
	movl	EPOLLRDHUP(%rip), %eax
	orl	EPOLLPRI(%rip), %eax
	orl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	epfd(%rip), %edi
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	leaq	-48(%rbp), %rcx
	callq	epoll_ctl@PLT
	movl	%eax, -4(%rbp)
.LBB0_15:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EPOLL_CTL_ADD
	.p2align	2
EPOLL_CTL_ADD:
	.long	0                               # 0x0
	.globl	EPOLL_CTL_DEL
	.p2align	2
EPOLL_CTL_DEL:
	.long	0                               # 0x0
	.globl	EPOLL_CTL_MOD
	.p2align	2
EPOLL_CTL_MOD:
	.long	0                               # 0x0
	.globl	EPOLLIN
	.p2align	2
EPOLLIN:
	.long	0                               # 0x0
	.globl	EPOLLOUT
	.p2align	2
EPOLLOUT:
	.long	0                               # 0x0
	.globl	EPOLLRDHUP
	.p2align	2
EPOLLRDHUP:
	.long	0                               # 0x0
	.globl	EPOLLPRI
	.p2align	2
EPOLLPRI:
	.long	0                               # 0x0
	.globl	epfd
	.p2align	2
epfd:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epoll_ctl
	.addrsig_sym EPOLL_CTL_ADD
	.addrsig_sym EPOLL_CTL_DEL
	.addrsig_sym EPOLL_CTL_MOD
	.addrsig_sym EPOLLIN
	.addrsig_sym EPOLLOUT
	.addrsig_sym EPOLLRDHUP
	.addrsig_sym EPOLLPRI
	.addrsig_sym epfd