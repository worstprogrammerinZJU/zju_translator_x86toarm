	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	fmov	d0, #1.00000000
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	fmov	s1, #1.00000000
	str	s1, [sp, #16]                   // 4-byte Folded Spill
	bl	expectf
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	ldr	s1, [sp, #16]                   // 4-byte Folded Reload
	bl	expectf
	fmov	d1, #2.00000000
	fmov	d0, d1
	bl	expectd
	mov	w0, #5
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	bl	test_signedcast
	bl	test_unsignedcast
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cast"
	.size	.L.str, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expectf
	.addrsig_sym expectd
	.addrsig_sym expect
	.addrsig_sym test_signedcast
	.addrsig_sym test_unsignedcast