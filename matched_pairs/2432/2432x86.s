	.text
	.globl	cttest_job_size_max_plus_1      # -- Begin function cttest_job_size_max_plus_1
	.p2align	4, 0x90
cttest_job_size_max_plus_1:             # @cttest_job_size_max_plus_1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1048608, %rsp                  # imm = 0x100020
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
	movl	$1048576, -12(%rbp)             # imm = 0x100000
	movq	%rsp, %rax
	movq	%rax, -24(%rbp)
	leaq	-1048608(%rbp), %rdi
	movl	$97, %esi
	movl	$1048576, %edx                  # imm = 0x100000
	callq	memset@PLT
	movb	$0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	JOB_DATA_SIZE_LIMIT_MAX(%rip), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %edi
	leaq	-1048608(%rbp), %rsi
	callq	mustsend@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1048576, %eax                  # imm = 0x100000
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	ckresp@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsp
	addq	$1048608, %rsp                  # imm = 0x100020
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
	.asciz	"put 0 0 0 1073741825\r\n"
.L.str.1:
	.asciz	"x"
.L.str.2:
	.asciz	"\r\n"
.L.str.3:
	.asciz	"JOB_TOO_BIG\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym memset
	.addrsig_sym ckresp
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym job_data_size_limit