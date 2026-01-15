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
	mov	w0, #3
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	fmov	d0, #3.00000000
	str	d0, [sp, #16]
	ldr	d1, [sp, #16]
	fcvtzs	w0, d1
	bl	expectf
	mov	w0, #5
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]
	ldr	w1, [sp, #8]
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"statement expression"
	.size	.L.str, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym expectf