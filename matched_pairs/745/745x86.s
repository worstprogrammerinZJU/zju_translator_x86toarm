	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movl	g1(%rip), %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movl	g3(%rip), %esi
	movl	$2, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$0, -8(%rbp)
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	-8(%rbp), %esi
	xorl	%edi, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"enum"
	.bss
	.globl	g1
	.p2align	2
g1:
	.long	0                               # 0x0
	.globl	g3
	.p2align	2
g3:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym g1
	.addrsig_sym g3