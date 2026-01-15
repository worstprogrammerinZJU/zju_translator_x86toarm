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
	bl	test_basic
	bl	test_relative
	bl	test_inc_dec
	bl	test_bool
	bl	test_unary
	bl	test_ternary
	bl	test_comma
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"basic arithmetic"
	.size	.L.str, 17
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