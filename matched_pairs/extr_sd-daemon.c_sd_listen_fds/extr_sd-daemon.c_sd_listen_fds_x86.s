	.text
	.globl	sd_listen_fds                   # -- Begin function sd_listen_fds
	.p2align	4, 0x90
sd_listen_fds:                          # @sd_listen_fds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movl	$0, -8(%rbp)
	jmp	.LBB0_28
.LBB0_2:
	movl	$0, errno(%rip)
	movq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movl	$10, %edx
	callq	strtoul@PLT
	movq	%rax, -40(%rbp)
	cmpl	$0, errno(%rip)
	je	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_28
.LBB0_4:
	cmpq	$0, -32(%rbp)
	je	.LBB0_7
# %bb.5:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:
	cmpq	$0, -40(%rbp)
	ja	.LBB0_8
.LBB0_7:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_28
.LBB0_8:
	movb	$0, %al
	callq	getpid@PLT
	cmpq	-40(%rbp), %rax
	je	.LBB0_10
# %bb.9:
	movl	$0, -8(%rbp)
	jmp	.LBB0_28
.LBB0_10:
	leaq	.L.str.1(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_12
# %bb.11:
	movl	$0, -8(%rbp)
	jmp	.LBB0_28
.LBB0_12:
	movl	$0, errno(%rip)
	movq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movl	$10, %edx
	callq	strtoul@PLT
	movq	%rax, -40(%rbp)
	cmpl	$0, errno(%rip)
	je	.LBB0_14
# %bb.13:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_28
.LBB0_14:
	cmpq	$0, -32(%rbp)
	je	.LBB0_16
# %bb.15:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_17
.LBB0_16:
	xorl	%eax, %eax
	subl	EINVAL(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_28
.LBB0_17:
	movl	SD_LISTEN_FDS_START(%rip), %eax
	movl	%eax, -12(%rbp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	SD_LISTEN_FDS_START(%rip), %ecx
	movq	-40(%rbp), %rdx
                                        # kill: def $edx killed $edx killed $rdx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_27
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-12(%rbp), %edi
	movl	F_GETFD(%rip), %esi
	movb	$0, %al
	callq	fcntl@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_21
# %bb.20:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_28
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-44(%rbp), %eax
	andl	FD_CLOEXEC(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_26
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-12(%rbp), %edi
	movl	F_SETFD(%rip), %esi
	movl	-44(%rbp), %edx
	orl	FD_CLOEXEC(%rip), %edx
	movb	$0, %al
	callq	fcntl@PLT
	cmpl	$0, %eax
	jge	.LBB0_25
# %bb.24:
	xorl	%eax, %eax
	subl	errno(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_28
.LBB0_25:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_18
.LBB0_27:
	movq	-40(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -8(%rbp)
.LBB0_28:
	cmpl	$0, -4(%rbp)
	je	.LBB0_30
# %bb.29:
	leaq	.L.str(%rip), %rdi
	callq	unsetenv@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	unsetenv@PLT
.LBB0_30:
	movl	-8(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LISTEN_PID"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.globl	EINVAL
	.p2align	2
EINVAL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"LISTEN_FDS"
	.bss
	.globl	SD_LISTEN_FDS_START
	.p2align	2
SD_LISTEN_FDS_START:
	.long	0                               # 0x0
	.globl	F_GETFD
	.p2align	2
F_GETFD:
	.long	0                               # 0x0
	.globl	FD_CLOEXEC
	.p2align	2
FD_CLOEXEC:
	.long	0                               # 0x0
	.globl	F_SETFD
	.p2align	2
F_SETFD:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getenv
	.addrsig_sym strtoul
	.addrsig_sym getpid
	.addrsig_sym fcntl
	.addrsig_sym unsetenv
	.addrsig_sym errno
	.addrsig_sym EINVAL
	.addrsig_sym SD_LISTEN_FDS_START
	.addrsig_sym F_GETFD
	.addrsig_sym FD_CLOEXEC
	.addrsig_sym F_SETFD