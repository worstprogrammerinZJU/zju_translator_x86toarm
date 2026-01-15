	.text
	.globl	socknext                        # -- Begin function socknext
	.p2align	4, 0x90
socknext:                               # @socknext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$1, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	$1000000000, %ecx               # imm = 0x3B9ACA00
	cltd
	idivl	%ecx
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	movl	$1000000000, %ecx               # imm = 0x3B9ACA00
	cltd
	idivl	%ecx
	movl	%edx, -52(%rbp)
	movl	portfd(%rip), %edi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	leaq	-28(%rbp), %rcx
	leaq	-56(%rbp), %r8
	callq	port_getn@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_4
# %bb.1:
	movq	errno(%rip), %rax
	cmpq	ETIME(%rip), %rax
	je	.LBB0_4
# %bb.2:
	movq	errno(%rip), %rax
	cmpq	EINTR(%rip), %rax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_4:
	cmpl	$0, -24(%rbp)
	jne	.LBB0_18
# %bb.5:
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-48(%rbp), %eax
	andl	POLLHUP(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:
	movl	$104, -4(%rbp)
	jmp	.LBB0_19
.LBB0_7:
	movl	-48(%rbp), %eax
	andl	POLLIN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.8:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$114, %esi
	callq	sockwant@PLT
	cmpl	$-1, %eax
	jne	.LBB0_10
# %bb.9:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_10:
	movl	$114, -4(%rbp)
	jmp	.LBB0_19
.LBB0_11:
	movl	-48(%rbp), %eax
	andl	POLLOUT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_15
# %bb.12:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$119, %esi
	callq	sockwant@PLT
	cmpl	$-1, %eax
	jne	.LBB0_14
# %bb.13:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_14:
	movl	$119, -4(%rbp)
	jmp	.LBB0_19
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movl	$0, -4(%rbp)
.LBB0_19:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	portfd
	.p2align	2
portfd:
	.long	0                               # 0x0
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.globl	ETIME
	.p2align	3
ETIME:
	.quad	0                               # 0x0
	.globl	EINTR
	.p2align	3
EINTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"port_getn"
	.bss
	.globl	POLLHUP
	.p2align	2
POLLHUP:
	.long	0                               # 0x0
	.globl	POLLIN
	.p2align	2
POLLIN:
	.long	0                               # 0x0
	.globl	POLLOUT
	.p2align	2
POLLOUT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym port_getn
	.addrsig_sym twarn
	.addrsig_sym sockwant
	.addrsig_sym portfd
	.addrsig_sym errno
	.addrsig_sym ETIME
	.addrsig_sym EINTR
	.addrsig_sym POLLHUP
	.addrsig_sym POLLIN
	.addrsig_sym POLLOUT