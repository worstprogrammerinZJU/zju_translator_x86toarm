	.text
	.globl	cttest_opt_none                 # -- Begin function cttest_opt_none
	.p2align	4, 0x90
cttest_opt_none:                        # @cttest_opt_none
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	leaq	-8(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	movl	srv+48(%rip), %edi
	movl	Portdef(%rip), %esi
	callq	strcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpq	$0, srv+40(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	job_data_size_limit(%rip), %rax
	cmpq	JOB_DATA_SIZE_LIMIT_DEFAULT(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	srv(%rip), %rax
	cmpq	Filesizedef(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpq	$0, srv+8(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpq	$0, srv+32(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpq	$0, srv+24(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpq	$0, srv+16(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpq	$0, verbose(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	srv
	.p2align	3
srv:
	.zero	56
	.globl	Portdef
	.p2align	2
Portdef:
	.long	0                               # 0x0
	.globl	job_data_size_limit
	.p2align	3
job_data_size_limit:
	.quad	0                               # 0x0
	.globl	JOB_DATA_SIZE_LIMIT_DEFAULT
	.p2align	3
JOB_DATA_SIZE_LIMIT_DEFAULT:
	.quad	0                               # 0x0
	.globl	Filesizedef
	.p2align	3
Filesizedef:
	.quad	0                               # 0x0
	.globl	verbose
	.p2align	3
verbose:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym srv
	.addrsig_sym Portdef
	.addrsig_sym job_data_size_limit
	.addrsig_sym JOB_DATA_SIZE_LIMIT_DEFAULT
	.addrsig_sym Filesizedef
	.addrsig_sym verbose