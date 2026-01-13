	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	bl	test_type
	bl	test_signed
	bl	test_unsigned
	bl	test_storage_class
	bl	test_pointer
	bl	test_unusual_order
	bl	test_typedef
	bl	test_align
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type system"
	.size	.L.str, 12
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