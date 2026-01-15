	.text
	.globl	sd_is_socket_unix               # -- Begin function sd_is_socket_unix
	.p2align	4, 0x90
sd_is_socket_unix:                      # @sd_is_socket_unix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	sd_is_socket_internal@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jg	.LBB0_2
# %bb.1:
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_2:
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
	jge	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_4:
	movslq	-44(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB0_6
# %bb.5:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_6:
	movq	-40(%rbp), %rax
	cmpq	AF_UNIX(%rip), %rax
	je	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_21
.LBB0_8:
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# %bb.9:
	cmpq	$0, -32(%rbp)
	ja	.LBB0_11
# %bb.10:
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -32(%rbp)
.LBB0_11:
	cmpq	$0, -32(%rbp)
	ja	.LBB0_13
# %bb.12:
	movslq	-44(%rbp), %rax
	cmpq	$4, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_13:
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_17
# %bb.14:
	movslq	-44(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$4, %rdx
	addq	$1, %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -49(%rbp)                  # 1-byte Spill
	jb	.LBB0_16
# %bb.15:
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %esi
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	callq	memcmp@PLT
	cmpq	$0, %rax
	sete	%al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB0_16:
	movb	-49(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_17:
	movslq	-44(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$4, %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -50(%rbp)                  # 1-byte Spill
	jne	.LBB0_19
# %bb.18:
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	memcmp@PLT
	cmpq	$0, %rax
	sete	%al
	movb	%al, -50(%rbp)                  # 1-byte Spill
.LBB0_19:
	movb	-50(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_20:
	movl	$1, -4(%rbp)
.LBB0_21:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.globl	AF_UNIX
	.p2align	3
AF_UNIX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym memset
	.addrsig_sym getsockname
	.addrsig_sym strlen
	.addrsig_sym memcmp
	.addrsig_sym errno
	.addrsig_sym EINVAL
	.addrsig_sym AF_UNIX