	.text
	.globl	cttest_optlseparate             # -- Begin function cttest_optlseparate
	.p2align	4, 0x90
cttest_optlseparate:                    # @cttest_optlseparate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	.L__const.cttest_optlseparate.args(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	.L__const.cttest_optlseparate.args+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	.L__const.cttest_optlseparate.args+16(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	movl	srv(%rip), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-l"
.L.str.1:
	.asciz	"localhost"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optlseparate.args:
	.quad	.L.str
	.quad	.L.str.1
	.quad	0
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym srv