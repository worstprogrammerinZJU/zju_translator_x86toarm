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
	callq	test_char@PLT
	movb	$0, %al
	callq	test_string@PLT
	movb	$0, %al
	callq	test_mbstring@PLT
	movb	$0, %al
	callq	test_float@PLT
	movb	$0, %al
	callq	test_ucn@PLT
	movb	$0, %al
	callq	test_compound@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"literal"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_char
	.addrsig_sym test_string
	.addrsig_sym test_mbstring
	.addrsig_sym test_float
	.addrsig_sym test_ucn
	.addrsig_sym test_compound