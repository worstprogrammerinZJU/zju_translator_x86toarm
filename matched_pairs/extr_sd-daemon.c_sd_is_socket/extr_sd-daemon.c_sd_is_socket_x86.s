	.text
	.globl	sd_is_socket                    # -- Begin function sd_is_socket
	.p2align	4, 0x90
sd_is_socket:                           # @sd_is_socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	sd_is_socket_internal@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	jg	.LBB0_4
# %bb.3:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_4:
	cmpl	$0, -12(%rbp)
	jle	.LBB0_10
# %bb.5:
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movl	$4, -36(%rbp)
	movl	-8(%rbp), %edi
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	callq	getsockname@PLT
	cmpq	$0, %rax
	jge	.LBB0_7
# %bb.6:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_7:
	movslq	-36(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB0_9
# %bb.8:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_9:
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	$1, -4(%rbp)
.LBB0_11:
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym memset
	.addrsig_sym getsockname
	.addrsig_sym EINVAL
	.addrsig_sym errno