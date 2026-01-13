	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function testmain
.LCPI0_0:
	.xword	0x3fe6666666666666              // double 0.69999999999999996
	.text
	.globl	testmain
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
	bl	std
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fmov	d0, d1
	bl	expect
	fmov	s0, #10.00000000
	stur	s0, [x29, #-4]
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-8]
	ldur	s0, [x29, #-4]
	fcvt	d1, s0
	fmov	d0, #10.00000000
	str	d0, [sp]                        // 8-byte Folded Spill
	bl	expectf
	ldr	d0, [sp]                        // 8-byte Folded Reload
	ldur	s1, [x29, #-8]
	fcvt	d1, s1
	bl	expectf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"float"
	.size	.L.str, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym std
	.addrsig_sym expect
	.addrsig_sym expectf