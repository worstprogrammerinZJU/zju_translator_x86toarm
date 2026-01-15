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
	callq	test_primitives@PLT
	movb	$0, %al
	callq	test_pointers@PLT
	movb	$0, %al
	callq	test_unsigned@PLT
	movb	$0, %al
	callq	test_literals@PLT
	movb	$0, %al
	callq	test_arrays@PLT
	movb	$0, %al
	callq	test_vars@PLT
	movb	$0, %al
	callq	test_struct@PLT
	movb	$0, %al
	callq	test_constexpr@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sizeof"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_primitives
	.addrsig_sym test_pointers
	.addrsig_sym test_unsigned
	.addrsig_sym test_literals
	.addrsig_sym test_arrays
	.addrsig_sym test_vars
	.addrsig_sym test_struct
	.addrsig_sym test_constexpr