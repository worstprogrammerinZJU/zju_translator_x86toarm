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
	callq	test_basic@PLT
	movb	$0, %al
	callq	test_relative@PLT
	movb	$0, %al
	callq	test_inc_dec@PLT
	movb	$0, %al
	callq	test_bool@PLT
	movb	$0, %al
	callq	test_unary@PLT
	movb	$0, %al
	callq	test_ternary@PLT
	movb	$0, %al
	callq	test_comma@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"basic arithmetic"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_basic
	.addrsig_sym test_relative
	.addrsig_sym test_inc_dec
	.addrsig_sym test_bool
	.addrsig_sym test_unary
	.addrsig_sym test_ternary
	.addrsig_sym test_comma