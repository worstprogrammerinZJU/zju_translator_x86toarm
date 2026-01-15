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
	bl	test_if
	bl	test_for
	bl	test_while
	bl	test_do
	bl	test_switch
	bl	test_goto
	bl	test_label
	bl	test_computed_goto
	bl	test_logor
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"control flow"
	.size	.L.str, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_if
	.addrsig_sym test_for
	.addrsig_sym test_while
	.addrsig_sym test_do
	.addrsig_sym test_switch
	.addrsig_sym test_goto
	.addrsig_sym test_label
	.addrsig_sym test_computed_goto
	.addrsig_sym test_logor