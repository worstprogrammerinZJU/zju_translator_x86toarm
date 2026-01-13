	.text
	.globl	cttest_optz                     # -- Begin function cttest_optz
	.p2align	4, 0x90
cttest_optz:                            # @cttest_optz
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.cttest_optz.args(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.cttest_optz.args+8(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	cmpl	$1234, job_data_size_limit(%rip) # imm = 0x4D2
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-z1234"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optz.args:
	.quad	.L.str
	.quad	0
	.bss
	.globl	srv
	.p2align	2
srv:
	.long	0                               # 0x0
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv
	.addrsig_sym job_data_size_limit