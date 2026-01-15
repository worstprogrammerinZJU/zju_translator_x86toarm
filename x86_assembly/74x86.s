	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movb	$0, %al
	callq	test_or@PLT
	movb	$0, %al
	callq	test_and@PLT
	movb	$0, %al
	callq	test_not@PLT
	movb	$0, %al
	callq	test_xor@PLT
	movb	$0, %al
	callq	test_shift@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bitwise operators"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_or
	.addrsig_sym test_and
	.addrsig_sym test_not
	.addrsig_sym test_xor
	.addrsig_sym test_shift