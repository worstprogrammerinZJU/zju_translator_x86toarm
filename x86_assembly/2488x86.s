	.text
	.globl	cttest_optl                     # -- Begin function cttest_optl
	.p2align	4, 0x90
cttest_optl:                            # @cttest_optl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.cttest_optl.args(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.cttest_optl.args+8(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rsi
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
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-llocalhost"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optl.args:
	.quad	.L.str
	.quad	0
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"localhost"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym srv