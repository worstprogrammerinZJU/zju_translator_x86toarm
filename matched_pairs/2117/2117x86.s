	.text
	.p2align	4, 0x90                         # -- Begin function sd_is_socket_internal
sd_is_socket_internal:                  # @sd_is_socket_internal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$0, -12(%rbp)
	jge	.LBB0_3
.LBB0_2:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_3:
	movl	-8(%rbp), %edi
	leaq	-24(%rbp), %rsi
	callq	fstat@PLT
	cmpq	$0, %rax
	jge	.LBB0_5
# %bb.4:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_5:
	movl	-24(%rbp), %edi
	callq	S_ISSOCK@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:
	movl	$0, -4(%rbp)
	jmp	.LBB0_24
.LBB0_7:
	cmpl	$0, -12(%rbp)
	je	.LBB0_15
# %bb.8:
	movl	$0, -28(%rbp)
	movl	$4, -32(%rbp)
	movl	-8(%rbp), %edi
	movl	SOL_SOCKET(%rip), %esi
	movl	SO_TYPE(%rip), %edx
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	callq	getsockopt@PLT
	cmpq	$0, %rax
	jge	.LBB0_10
# %bb.9:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_10:
	movslq	-32(%rbp), %rax
	cmpq	$4, %rax
	je	.LBB0_12
# %bb.11:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_12:
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB0_14
# %bb.13:
	movl	$0, -4(%rbp)
	jmp	.LBB0_24
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	cmpl	$0, -16(%rbp)
	jl	.LBB0_23
# %bb.16:
	movl	$0, -36(%rbp)
	movl	$4, -40(%rbp)
	movl	-8(%rbp), %edi
	movl	SOL_SOCKET(%rip), %esi
	movl	SO_ACCEPTCONN(%rip), %edx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	callq	getsockopt@PLT
	cmpq	$0, %rax
	jge	.LBB0_18
# %bb.17:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_18:
	movslq	-40(%rbp), %rax
	cmpq	$4, %rax
	je	.LBB0_20
# %bb.19:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_20:
	cmpl	$0, -36(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	$0, -16(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_22
# %bb.21:
	movl	$0, -4(%rbp)
	jmp	.LBB0_24
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	movl	$1, -4(%rbp)
.LBB0_24:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.globl	SOL_SOCKET
	.p2align	2
SOL_SOCKET:
	.long	0                               # 0x0
	.globl	SO_TYPE
	.p2align	2
SO_TYPE:
	.long	0                               # 0x0
	.globl	SO_ACCEPTCONN
	.p2align	2
SO_ACCEPTCONN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym fstat
	.addrsig_sym S_ISSOCK
	.addrsig_sym getsockopt
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym SOL_SOCKET
	.addrsig_sym SO_TYPE
	.addrsig_sym SO_ACCEPTCONN