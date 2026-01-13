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
	bl	test_primitives
	bl	test_pointers
	bl	test_unsigned
	bl	test_literals
	bl	test_arrays
	bl	test_vars
	bl	test_struct
	bl	test_constexpr
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sizeof"
	.size	.L.str, 7
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