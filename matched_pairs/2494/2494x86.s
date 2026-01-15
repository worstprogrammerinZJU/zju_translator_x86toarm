	.text
	.globl	cttest_optminus                 # -- Begin function cttest_optminus
	.p2align	4, 0x90
cttest_optminus:                        # @cttest_optminus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	.L__const.cttest_optminus.args(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	.L__const.cttest_optminus.args+8(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	success(%rip), %edi
	callq	atexit@PLT
	leaq	-16(%rbp), %rsi
	leaq	srv(%rip), %rdi
	callq	optparse@PLT
	xorl	%edi, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	assertf@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.cttest_optminus.args:
	.quad	.L.str
	.quad	0
	.bss
	.globl	success
	.p2align	2
success:
	.long	0                               # 0x0
	.globl	srv
	.p2align	2
srv:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"optparse failed to call exit"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym atexit
	.addrsig_sym optparse
	.addrsig_sym assertf
	.addrsig_sym success
	.addrsig_sym srv