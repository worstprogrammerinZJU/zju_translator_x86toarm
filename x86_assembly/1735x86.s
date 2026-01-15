	.text
	.globl	make_server_socket              # -- Begin function make_server_socket
	.p2align	4, 0x90
make_server_socket:                     # @make_server_socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$1, %edi
	callq	sd_listen_fds@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_18
.LBB0_2:
	cmpl	$0, -32(%rbp)
	jle	.LBB0_14
# %bb.3:
	cmpl	$1, -32(%rbp)
	jle	.LBB0_5
# %bb.4:
	leaq	.L.str.1(%rip), %rdi
	callq	twarnx@PLT
.LBB0_5:
	movl	SD_LISTEN_FDS_START(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	movl	SOCK_STREAM(%rip), %edx
	xorl	%r8d, %r8d
	movl	$1, %ecx
	movl	%r8d, %esi
	callq	sd_is_socket_inet@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB0_7
# %bb.6:
	leaq	.L.str.2(%rip), %rdi
	callq	twarn@PLT
	xorl	%eax, %eax
	subl	-32(%rbp), %eax
	movl	%eax, errno(%rip)
	movl	$-1, -4(%rbp)
	jmp	.LBB0_18
.LBB0_7:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_13
# %bb.8:
	movl	-28(%rbp), %edi
	movl	SOCK_STREAM(%rip), %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	callq	sd_is_socket_unix@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB0_10
# %bb.9:
	leaq	.L.str.3(%rip), %rdi
	callq	twarn@PLT
	xorl	%eax, %eax
	subl	-32(%rbp), %eax
	movl	%eax, errno(%rip)
	movl	$-1, -4(%rbp)
	jmp	.LBB0_18
.LBB0_10:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_12
# %bb.11:
	leaq	.L.str.4(%rip), %rdi
	callq	twarnx@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB0_18
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_18
.LBB0_14:
	cmpq	$0, -16(%rbp)
	je	.LBB0_17
# %bb.15:
	movq	-16(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$5, %edx
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_17
# %bb.16:
	movq	-16(%rbp), %rdi
	addq	$5, %rdi
	callq	make_unix_socket@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_18
.LBB0_17:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	make_inet_socket@PLT
	movl	%eax, -4(%rbp)
.LBB0_18:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sd_listen_fds"
.L.str.1:
	.asciz	"inherited more than one listen socket; ignoring all but the first"
	.bss
	.globl	SD_LISTEN_FDS_START
	.p2align	2
SD_LISTEN_FDS_START:
	.long	0                               # 0x0
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"sd_is_socket_inet"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"sd_is_socket_unix"
.L.str.4:
	.asciz	"inherited fd is not a TCP or UNIX listening socket"
.L.str.5:
	.asciz	"unix:"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_listen_fds
	.addrsig_sym twarn
	.addrsig_sym twarnx
	.addrsig_sym sd_is_socket_inet
	.addrsig_sym sd_is_socket_unix
	.addrsig_sym strncmp
	.addrsig_sym make_unix_socket
	.addrsig_sym make_inet_socket
	.addrsig_sym SD_LISTEN_FDS_START
	.addrsig_sym SOCK_STREAM
	.addrsig_sym errno