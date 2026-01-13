	.text
	.globl	h_accept                        # -- Begin function h_accept
	.p2align	4, 0x90
h_accept:                               # @h_accept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movw	%si, %ax
	movl	%edi, -4(%rbp)
	movw	%ax, -6(%rbp)
	movq	%rdx, -16(%rbp)
	movswl	-6(%rbp), %edi
	callq	UNUSED_PARAMETER@PLT
	movl	$4, -28(%rbp)
	movl	-4(%rbp), %edi
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	callq	accept@PLT
	movl	%eax, -32(%rbp)
	cmpl	$-1, -32(%rbp)
	jne	.LBB0_5
# %bb.1:
	movq	errno(%rip), %rax
	cmpq	EAGAIN(%rip), %rax
	je	.LBB0_4
# %bb.2:
	movq	errno(%rip), %rax
	cmpq	EWOULDBLOCK(%rip), %rax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
.LBB0_4:
	movb	$0, %al
	callq	epollq_apply@PLT
	jmp	.LBB0_24
.LBB0_5:
	cmpq	$0, verbose(%rip)
	je	.LBB0_7
# %bb.6:
	movl	-32(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
.LBB0_7:
	movl	-32(%rbp), %edi
	movl	F_GETFL(%rip), %esi
	xorl	%edx, %edx
	callq	fcntl@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB0_11
# %bb.8:
	leaq	.L.str.2(%rip), %rdi
	callq	twarn@PLT
	movl	-32(%rbp), %edi
	callq	close@PLT
	cmpq	$0, verbose(%rip)
	je	.LBB0_10
# %bb.9:
	movl	-32(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	callq	printf@PLT
.LBB0_10:
	movb	$0, %al
	callq	epollq_apply@PLT
	jmp	.LBB0_24
.LBB0_11:
	movl	-32(%rbp), %edi
	movl	F_SETFL(%rip), %esi
	movl	-36(%rbp), %edx
	orl	O_NONBLOCK(%rip), %edx
	callq	fcntl@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jge	.LBB0_15
# %bb.12:
	leaq	.L.str.4(%rip), %rdi
	callq	twarn@PLT
	movl	-32(%rbp), %edi
	callq	close@PLT
	cmpq	$0, verbose(%rip)
	je	.LBB0_14
# %bb.13:
	movl	-32(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	callq	printf@PLT
.LBB0_14:
	movb	$0, %al
	callq	epollq_apply@PLT
	jmp	.LBB0_24
.LBB0_15:
	movl	-32(%rbp), %edi
	movl	STATE_WANT_COMMAND(%rip), %esi
	movl	default_tube(%rip), %edx
	movl	default_tube(%rip), %ecx
	callq	make_conn@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_19
# %bb.16:
	leaq	.L.str.5(%rip), %rdi
	callq	twarnx@PLT
	movl	-32(%rbp), %edi
	callq	close@PLT
	cmpq	$0, verbose(%rip)
	je	.LBB0_18
# %bb.17:
	movl	-32(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	callq	printf@PLT
.LBB0_18:
	movb	$0, %al
	callq	epollq_apply@PLT
	jmp	.LBB0_24
.LBB0_19:
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	prothandle(%rip), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rdi
	movl	$114, %esi
	callq	sockwant@PLT
	movl	%eax, -40(%rbp)
	cmpl	$-1, -40(%rbp)
	jne	.LBB0_23
# %bb.20:
	leaq	.L.str.6(%rip), %rdi
	callq	twarn@PLT
	movl	-32(%rbp), %edi
	callq	close@PLT
	cmpq	$0, verbose(%rip)
	je	.LBB0_22
# %bb.21:
	movl	-32(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	callq	printf@PLT
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	movb	$0, %al
	callq	epollq_apply@PLT
.LBB0_24:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.globl	EAGAIN
	.p2align	3
EAGAIN:
	.quad	0                               # 0x0
	.globl	EWOULDBLOCK
	.p2align	3
EWOULDBLOCK:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"accept()"
	.bss
	.globl	verbose
	.p2align	3
verbose:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"accept %d\n"
	.bss
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"getting flags"
.L.str.3:
	.asciz	"close %d\n"
	.bss
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.long	0                               # 0x0
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"setting O_NONBLOCK"
	.bss
	.globl	STATE_WANT_COMMAND
	.p2align	2
STATE_WANT_COMMAND:
	.long	0                               # 0x0
	.globl	default_tube
	.p2align	2
default_tube:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"make_conn() failed"
	.bss
	.globl	prothandle
	.p2align	3
prothandle:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"sockwant"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym accept
	.addrsig_sym twarn
	.addrsig_sym epollq_apply
	.addrsig_sym printf
	.addrsig_sym fcntl
	.addrsig_sym close
	.addrsig_sym make_conn
	.addrsig_sym twarnx
	.addrsig_sym sockwant
	.addrsig_sym errno
	.addrsig_sym EAGAIN
	.addrsig_sym EWOULDBLOCK
	.addrsig_sym verbose
	.addrsig_sym F_GETFL
	.addrsig_sym F_SETFL
	.addrsig_sym O_NONBLOCK
	.addrsig_sym STATE_WANT_COMMAND
	.addrsig_sym default_tube
	.addrsig_sym prothandle