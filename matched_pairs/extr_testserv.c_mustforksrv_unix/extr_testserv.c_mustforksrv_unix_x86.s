	.text
	.p2align	4, 0x90                         # -- Begin function mustforksrv_unix
mustforksrv_unix:                       # @mustforksrv_unix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movb	$0, %al
	callq	ctdir@PLT
	movq	%rax, %rcx
	leaq	mustforksrv_unix.path(%rip), %rdi
	movl	$90, %esi
	leaq	.L.str(%rip), %rdx
	callq	snprintf@PLT
	leaq	-112(%rbp), %rdi
	movl	$95, %esi
	leaq	.L.str.1(%rip), %rdx
	leaq	mustforksrv_unix.path(%rip), %rcx
	callq	snprintf@PLT
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	make_server_socket@PLT
	movl	%eax, srv(%rip)
	cmpl	$-1, srv(%rip)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str.2(%rip), %rdi
	callq	puts@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	movb	$0, %al
	callq	fork@PLT
	movq	%rax, srvpid(%rip)
	cmpq	$0, srvpid(%rip)
	jge	.LBB0_4
# %bb.3:
	leaq	.L.str.3(%rip), %rdi
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_4:
	cmpq	$0, srvpid(%rip)
	jle	.LBB0_6
# %bb.5:
	movl	kill_srvpid(%rip), %edi
	callq	atexit@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	mustforksrv_unix.path(%rip), %rsi
	callq	printf@PLT
	leaq	mustforksrv_unix.path(%rip), %rdi
	callq	exist@PLT
	movl	%eax, %edi
	callq	assert@PLT
	leaq	mustforksrv_unix.path(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movb	$0, %al
	callq	set_sig_handler@PLT
	movb	$0, %al
	callq	prot_init@PLT
	leaq	srv(%rip), %rdi
	callq	srv_acquire_wal@PLT
	leaq	srv(%rip), %rdi
	callq	srvserve@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	mustforksrv_unix.path
	.comm	mustforksrv_unix.path,90,16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/socket"
.L.str.1:
	.asciz	"unix:%s"
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"mustforksrv_unix failed"
	.bss
	.globl	srvpid
	.p2align	3
srvpid:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"fork"
	.bss
	.globl	kill_srvpid
	.p2align	2
kill_srvpid:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"start server socket=%s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustforksrv_unix
	.addrsig_sym snprintf
	.addrsig_sym ctdir
	.addrsig_sym make_server_socket
	.addrsig_sym puts
	.addrsig_sym exit
	.addrsig_sym fork
	.addrsig_sym twarn
	.addrsig_sym atexit
	.addrsig_sym printf
	.addrsig_sym assert
	.addrsig_sym exist
	.addrsig_sym set_sig_handler
	.addrsig_sym prot_init
	.addrsig_sym srv_acquire_wal
	.addrsig_sym srvserve
	.addrsig_sym mustforksrv_unix.path
	.addrsig_sym srv
	.addrsig_sym srvpid
	.addrsig_sym kill_srvpid