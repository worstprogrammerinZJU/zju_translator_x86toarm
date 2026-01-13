	.text
	.p2align	2                               // -- Begin function test_storage_class
	.type	test_storage_class,@function
test_storage_class:                     // @test_storage_class
// %bb.0:
	sub	sp, sp, #16
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	test_storage_class, .Lfunc_end0-test_storage_class
                                        // -- End function
	.type	test_storage_class.a,@object    // @test_storage_class.a
	.local	test_storage_class.a
	.comm	test_storage_class.a,4,4
	.type	test_storage_class.d,@object    // @test_storage_class.d
	.local	test_storage_class.d
	.comm	test_storage_class.d,4,4
	.type	a,@object                       // @a
	.bss
	.globl	a
	.p2align	2
a:
	.word	0                               // 0x0
	.size	a, 4
	.type	c,@object                       // @c
	.globl	c
	.p2align	2
c:
	.word	0                               // 0x0
	.size	c, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_storage_class