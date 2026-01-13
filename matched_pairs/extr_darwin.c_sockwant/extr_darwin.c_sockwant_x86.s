	.text
	.globl	sockwant                        # -- Begin function sockwant
	.p2align	4, 0x90
sockwant:                               # @sockwant
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	leaq	-96(%rbp), %rdi
	xorl	%esi, %esi
	movl	$80, %edx
	callq	memset@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, (%rax)
	movl	EV_DELETE(%rip), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-104(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -104(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB0_2:
	cmpl	$0, -12(%rbp)
	je	.LBB0_8
# %bb.3:
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 28(%rax)
	movl	-12(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	subl	$114, %eax
	je	.LBB0_4
	jmp	.LBB0_9
.LBB0_9:
	movl	-116(%rbp), %eax                # 4-byte Reload
	subl	$119, %eax
	je	.LBB0_5
	jmp	.LBB0_6
.LBB0_4:
	movq	EVFILT_READ(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_7
.LBB0_5:
	movq	EVFILT_WRITE(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_7
.LBB0_6:
	movq	EVFILT_READ(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, (%rax)
	movl	NOTE_LOWAT(%rip), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	Infinity(%rip), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 20(%rax)
.LBB0_7:
	movl	EV_ADD(%rip), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-104(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -104(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB0_8:
	movl	kq(%rip), %edi
	leaq	-96(%rbp), %rsi
	movl	-16(%rbp), %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	leaq	-112(%rbp), %r9
	callq	kevent@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EV_DELETE
	.p2align	2
EV_DELETE:
	.long	0                               # 0x0
	.globl	EVFILT_READ
	.p2align	3
EVFILT_READ:
	.quad	0
	.globl	EVFILT_WRITE
	.p2align	3
EVFILT_WRITE:
	.quad	0
	.globl	NOTE_LOWAT
	.p2align	2
NOTE_LOWAT:
	.long	0                               # 0x0
	.globl	Infinity
	.p2align	2
Infinity:
	.long	0                               # 0x0
	.globl	EV_ADD
	.p2align	2
EV_ADD:
	.long	0                               # 0x0
	.globl	kq
	.p2align	2
kq:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kevent
	.addrsig_sym EV_DELETE
	.addrsig_sym EVFILT_READ
	.addrsig_sym EVFILT_WRITE
	.addrsig_sym NOTE_LOWAT
	.addrsig_sym Infinity
	.addrsig_sym EV_ADD
	.addrsig_sym kq