	.text
	.globl	cttest_job_size_invalid         # -- Begin function cttest_job_size_invalid
	.p2align	4, 0x90
cttest_job_size_invalid:                # @cttest_job_size_invalid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	JOB_DATA_SIZE_LIMIT_MAX(%rip), %eax
	movl	%eax, job_data_size_limit(%rip)
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
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckresp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JOB_DATA_SIZE_LIMIT_MAX
	.p2align	2
JOB_DATA_SIZE_LIMIT_MAX:
	.long	0                               # 0x0
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 0 4294967296\r\n"
.L.str.1:
	.asciz	"put 0 0 0 10b\r\n"
.L.str.2:
	.asciz	"put 0 0 0 --!@#$%^&&**()0b\r\n"
.L.str.3:
	.asciz	"put 0 0 0 1\r\n"
.L.str.4:
	.asciz	"x\r\n"
.L.str.5:
	.asciz	"BAD_FORMAT\r\n"
.L.str.6:
	.asciz	"INSERTED 1\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym job_data_size_limit