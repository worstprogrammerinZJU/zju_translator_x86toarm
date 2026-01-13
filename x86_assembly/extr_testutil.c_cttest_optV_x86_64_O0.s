	.text
	.globl	cttest_optV                     # -- Begin function cttest_optV
	.p2align	4, 0x90
cttest_optV:                            # @cttest_optV
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.cttest_optV.args(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.cttest_optV.args+8(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	cmpl	$1, verbose(%rip)
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
	.asciz	"-V"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optV.args:
	.quad	.L.str
	.quad	0
	.bss
	.globl	srv
	.p2align	2
srv:
	.long	0                               # 0x0
	.globl	verbose
	.p2align	2
verbose:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym srv
	.addrsig_sym verbose