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
	callq	test_type@PLT
	movb	$0, %al
	callq	test_signed@PLT
	movb	$0, %al
	callq	test_unsigned@PLT
	movb	$0, %al
	callq	test_storage_class@PLT
	movb	$0, %al
	callq	test_pointer@PLT
	movb	$0, %al
	callq	test_unusual_order@PLT
	movb	$0, %al
	callq	test_typedef@PLT
	movb	$0, %al
	callq	test_align@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type system"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_type
	.addrsig_sym test_signed
	.addrsig_sym test_unsigned
	.addrsig_sym test_storage_class
	.addrsig_sym test_pointer
	.addrsig_sym test_unusual_order
	.addrsig_sym test_typedef
	.addrsig_sym test_align