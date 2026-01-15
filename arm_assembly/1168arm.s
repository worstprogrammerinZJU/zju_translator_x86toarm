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
	bl	test_array
	bl	test_string
	bl	test_struct
	bl	test_primitive
	bl	test_nested
	bl	test_array_designator
	bl	test_struct_designator
	bl	test_complex_designator
	bl	test_zero
	bl	test_typedef
	bl	test_excessive
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"initializer"
	.size	.L.str, 12
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