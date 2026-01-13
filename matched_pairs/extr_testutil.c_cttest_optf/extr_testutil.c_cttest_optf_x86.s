	.text
	.globl	cttest_optf                     # -- Begin function cttest_optf
	.p2align	4, 0x90
cttest_optf:                            # @cttest_optf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.cttest_optf.args(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.cttest_optf.args+8(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	cmpl	$1234000000, srv(%rip)          # imm = 0x498D5880
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpl	$1, srv+4(%rip)
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
	.asciz	"-f1234"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optf.args:
	.quad	.L.str
	.quad	0
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv