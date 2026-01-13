	.text
	.globl	sd_is_socket_inet               # -- Begin function sd_is_socket_inet
	.p2align	4, 0x90
sd_is_socket_inet:                      # @sd_is_socket_inet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB0_4
# %bb.1:
	movl	-12(%rbp), %eax
	cmpl	AF_INET(%rip), %eax
	je	.LBB0_4
# %bb.2:
	movl	-12(%rbp), %eax
	cmpl	AF_INET6(%rip), %eax
	je	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_4:
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	sd_is_socket_internal@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jg	.LBB0_6
# %bb.5:
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_6:
	leaq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	movl	$8, -44(%rbp)
	movl	-8(%rbp), %edi
	leaq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	callq	getsockname@PLT
	cmpq	$0, %rax
	jge	.LBB0_8
# %bb.7:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_8:
	movslq	-44(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB0_10
# %bb.9:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_10:
	movl	-40(%rbp), %eax
	cmpl	AF_INET(%rip), %eax
	je	.LBB0_13
# %bb.11:
	movl	-40(%rbp), %eax
	cmpl	AF_INET6(%rip), %eax
	je	.LBB0_13
# %bb.12:
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_13:
	cmpl	$0, -12(%rbp)
	jle	.LBB0_17
# %bb.14:
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB0_16
# %bb.15:
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	cmpq	$0, -32(%rbp)
	jle	.LBB0_25
# %bb.18:
	movl	-40(%rbp), %eax
	cmpl	AF_INET(%rip), %eax
	jne	.LBB0_22
# %bb.19:
	movslq	-44(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB0_21
# %bb.20:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_21:
	movq	-32(%rbp), %rdi
	callq	htons@PLT
	cmpq	-40(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_22:
	movslq	-44(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB0_24
# %bb.23:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_24:
	movq	-32(%rbp), %rdi
	callq	htons@PLT
	cmpq	-40(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_26
.LBB0_25:
	movl	$1, -4(%rbp)
.LBB0_26:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AF_INET
	.p2align	2
AF_INET:
	.long	0                               # 0x0
	.globl	AF_INET6
	.p2align	2
AF_INET6:
	.long	0                               # 0x0
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym memset
	.addrsig_sym getsockname
	.addrsig_sym htons
	.addrsig_sym AF_INET
	.addrsig_sym AF_INET6
	.addrsig_sym EINVAL
	.addrsig_sym errno