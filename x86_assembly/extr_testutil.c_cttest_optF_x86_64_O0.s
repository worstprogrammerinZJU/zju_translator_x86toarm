	.text
	.globl	cttest_optF                     # -- Begin function cttest_optF
	.p2align	4, 0x90
cttest_optF:                            # @cttest_optF
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	.L__const.cttest_optF.args(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	.L__const.cttest_optF.args+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	.L__const.cttest_optF.args+16(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	cmpq	$0, srv(%rip)
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
	.asciz	"-f1234"
.L.str.1:
	.asciz	"-F"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optF.args:
	.quad	.L.str
	.quad	.L.str.1
	.quad	0
	.bss
	.globl	srv
	.p2align	3
srv:
	.zero	8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv