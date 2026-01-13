	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	UNUSED_PARAMETER@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, progname(%rip)
	movl	stdout(%rip), %edi
	callq	setlinebuf@PLT
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	cmpq	$0, verbose(%rip)
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	getpid@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
.LBB0_2:
	movl	srv+16(%rip), %edi
	movl	srv+12(%rip), %esi
	callq	make_server_socket@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	.L.str.1(%rip), %rdi
	callq	twarnx@PLT
	movl	$111, %edi
	callq	exit@PLT
.LBB0_4:
	movl	-20(%rbp), %eax
	movl	%eax, srv+8(%rip)
	movb	$0, %al
	callq	prot_init@PLT
	cmpq	$0, srv(%rip)
	je	.LBB0_6
# %bb.5:
	movq	srv(%rip), %rdi
	callq	su@PLT
.LBB0_6:
	movb	$0, %al
	callq	set_sig_handlers@PLT
	leaq	srv(%rip), %rdi
	callq	srv_acquire_wal@PLT
	leaq	srv(%rip), %rdi
	callq	srvserve@PLT
	xorl	%edi, %edi
	callq	exit@PLT
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	progname
	.p2align	3
progname:
	.quad	0
	.globl	stdout
	.p2align	2
stdout:
	.long	0                               # 0x0
	.globl	srv
	.p2align	3
srv:
	.zero	24
	.globl	verbose
	.p2align	3
verbose:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pid %d\n"
.L.str.1:
	.asciz	"make_server_socket()"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym setlinebuf
	.addrsig_sym optparse
	.addrsig_sym printf
	.addrsig_sym getpid
	.addrsig_sym make_server_socket
	.addrsig_sym twarnx
	.addrsig_sym exit
	.addrsig_sym prot_init
	.addrsig_sym su
	.addrsig_sym set_sig_handlers
	.addrsig_sym srv_acquire_wal
	.addrsig_sym srvserve
	.addrsig_sym progname
	.addrsig_sym stdout
	.addrsig_sym srv
	.addrsig_sym verbose