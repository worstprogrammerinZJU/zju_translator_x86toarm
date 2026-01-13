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
	callq	test_if@PLT
	movb	$0, %al
	callq	test_for@PLT
	movb	$0, %al
	callq	test_while@PLT
	movb	$0, %al
	callq	test_do@PLT
	movb	$0, %al
	callq	test_switch@PLT
	movb	$0, %al
	callq	test_goto@PLT
	movb	$0, %al
	callq	test_label@PLT
	movb	$0, %al
	callq	test_computed_goto@PLT
	movb	$0, %al
	callq	test_logor@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"control flow"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_if
	.addrsig_sym test_for
	.addrsig_sym test_while
	.addrsig_sym test_do
	.addrsig_sym test_switch
	.addrsig_sym test_goto
	.addrsig_sym test_label
	.addrsig_sym test_computed_goto
	.addrsig_sym test_logor