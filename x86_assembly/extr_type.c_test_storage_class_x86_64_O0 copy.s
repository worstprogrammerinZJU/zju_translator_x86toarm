	.text
	.p2align	4, 0x90                         # -- Begin function test_storage_class
test_storage_class:                     # @test_storage_class
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	test_storage_class.a
	.comm	test_storage_class.a,4,4
	.local	test_storage_class.d
	.comm	test_storage_class.d,4,4
	.bss
	.globl	a
	.p2align	2
a:
	.long	0                               # 0x0
	.globl	c
	.p2align	2
c:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_storage_class