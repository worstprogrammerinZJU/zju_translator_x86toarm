	.text
	.globl	cttest_reserve_with_timeout_2conns # -- Begin function cttest_reserve_with_timeout_2conns
	.p2align	4, 0x90
cttest_reserve_with_timeout_2conns:     # @cttest_reserve_with_timeout_2conns
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$10, job_data_size_limit(%rip)
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-4(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	ckresp@PLT
	movl	-4(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	ckresp@PLT
	movl	$1100000000, timeout(%rip)      # imm = 0x4190AB00
	movl	-4(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	ckresp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"watch foo\r\n"
.L.str.1:
	.asciz	"WATCHING 2\r\n"
.L.str.2:
	.asciz	"reserve-with-timeout 1\r\n"
	.bss
	.globl	timeout
	.p2align	2
timeout:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"TIMED_OUT\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym job_data_size_limit
	.addrsig_sym timeout