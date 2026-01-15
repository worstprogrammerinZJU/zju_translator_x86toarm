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
	movl	$31, -4(%rbp)
	movl	$64, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	$31, %edi
	callq	expect@PLT
	movl	$64, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	$64, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"scope"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect