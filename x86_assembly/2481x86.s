	.text
	.p2align	4, 0x90                         # -- Begin function mustforksrv
mustforksrv:                            # @mustforksrv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
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
	movq	$4, -16(%rbp)
	movl	srv(%rip), %edi
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	getsockname@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	je	.LBB0_4
# %bb.3:
	cmpq	$4, -16(%rbp)
	jbe	.LBB0_5
.LBB0_4:
	leaq	.L.str.2(%rip), %rdi
	callq	puts@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_5:
	movl	-8(%rbp), %edi
	callq	ntohs@PLT
	movl	%eax, -24(%rbp)
	movb	$0, %al
	callq	fork@PLT
	movq	%rax, srvpid(%rip)
	cmpq	$0, srvpid(%rip)
	jge	.LBB0_7
# %bb.6:
	leaq	.L.str.3(%rip), %rdi
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_7:
	cmpq	$0, srvpid(%rip)
	jle	.LBB0_9
# %bb.8:
	movl	kill_srvpid(%rip), %edi
	callq	atexit@PLT
	movl	-24(%rbp), %esi
	movq	srvpid(%rip), %rdx
	leaq	.L.str.4(%rip), %rdi
	callq	printf@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_9:
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
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"127.0.0.1"
.L.str.1:
	.asciz	"0"
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"mustforksrv failed"
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
	.asciz	"start server port=%d pid=%d\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustforksrv
	.addrsig_sym make_server_socket
	.addrsig_sym puts
	.addrsig_sym exit
	.addrsig_sym getsockname
	.addrsig_sym ntohs
	.addrsig_sym fork
	.addrsig_sym twarn
	.addrsig_sym atexit
	.addrsig_sym printf
	.addrsig_sym set_sig_handler
	.addrsig_sym prot_init
	.addrsig_sym srv_acquire_wal
	.addrsig_sym srvserve
	.addrsig_sym srv
	.addrsig_sym srvpid
	.addrsig_sym kill_srvpid