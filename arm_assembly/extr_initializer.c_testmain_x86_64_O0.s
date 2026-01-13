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
	callq	test_array@PLT
	movb	$0, %al
	callq	test_string@PLT
	movb	$0, %al
	callq	test_struct@PLT
	movb	$0, %al
	callq	test_primitive@PLT
	movb	$0, %al
	callq	test_nested@PLT
	movb	$0, %al
	callq	test_array_designator@PLT
	movb	$0, %al
	callq	test_struct_designator@PLT
	movb	$0, %al
	callq	test_complex_designator@PLT
	movb	$0, %al
	callq	test_zero@PLT
	movb	$0, %al
	callq	test_typedef@PLT
	movb	$0, %al
	callq	test_excessive@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"initializer"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_array
	.addrsig_sym test_string
	.addrsig_sym test_struct
	.addrsig_sym test_primitive
	.addrsig_sym test_nested
	.addrsig_sym test_array_designator
	.addrsig_sym test_struct_designator
	.addrsig_sym test_complex_designator
	.addrsig_sym test_zero
	.addrsig_sym test_typedef
	.addrsig_sym test_excessive