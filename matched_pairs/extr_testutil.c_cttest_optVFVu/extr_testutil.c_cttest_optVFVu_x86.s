	.text
	.globl	cttest_optVFVu                  # -- Begin function cttest_optVFVu
	.p2align	4, 0x90
cttest_optVFVu:                         # @cttest_optVFVu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.cttest_optVFVu.args(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.cttest_optVFVu.args+8(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	cmpl	$2, verbose(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpq	$0, srv+8(%rip)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
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
	.asciz	"-VFVukr"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optVFVu.args:
	.quad	.L.str
	.quad	0
	.bss
	.globl	srv
	.p2align	3
srv:
	.zero	16
	.globl	verbose
	.p2align	2
verbose:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"kr"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optparse
	.addrsig_sym assert
	.addrsig_sym strcmp
	.addrsig_sym srv
	.addrsig_sym verbose