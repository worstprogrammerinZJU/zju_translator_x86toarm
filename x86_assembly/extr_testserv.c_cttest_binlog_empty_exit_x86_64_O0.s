	.text
	.globl	cttest_binlog_empty_exit        # -- Begin function cttest_binlog_empty_exit
	.p2align	4, 0x90
cttest_binlog_empty_exit:               # @cttest_binlog_empty_exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	ctdir@PLT
	movl	%eax, srv+4(%rip)
	movl	$1, srv(%rip)
	movl	$10, job_data_size_limit(%rip)
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -4(%rbp)
	movb	$0, %al
	callq	kill_srvpid@PLT
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	ckresp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	8
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 0 0\r\n"
.L.str.1:
	.asciz	"\r\n"
.L.str.2:
	.asciz	"INSERTED 1\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym kill_srvpid
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym srv
	.addrsig_sym job_data_size_limit