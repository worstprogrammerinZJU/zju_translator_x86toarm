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
	bl	test_or
	bl	test_and
	bl	test_not
	bl	test_xor
	bl	test_shift
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bitwise operators"
	.size	.L.str, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_or
	.addrsig_sym test_and
	.addrsig_sym test_not
	.addrsig_sym test_xor
	.addrsig_sym test_shift