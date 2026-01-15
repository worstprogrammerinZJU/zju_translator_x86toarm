	.text
	.globl	testmain                        // -- Begin function testmain
	.p2align	2
	.type	testmain,@function
testmain:                               // @testmain
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	print
	bl	test_builtin
	mov	w0, #1
	mov	w1, #2
	mov	w2, #3
	mov	w3, #5
	stur	w3, [x29, #-4]                  // 4-byte Folded Spill
	mov	w4, #8
	bl	test_int
	fmov	d0, #1.00000000
	fmov	d1, #2.00000000
	str	d1, [sp]                        // 8-byte Folded Spill
	fmov	d2, #4.00000000
	fmov	d3, #8.00000000
	bl	test_float
	ldr	d0, [sp]                        // 8-byte Folded Reload
	ldur	w3, [x29, #-4]                  // 4-byte Folded Reload
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	mov	w1, #4
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	test_mix
	bl	test_va_list
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"varargs"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"abc"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"d"
	.size	.L.str.2, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym test_builtin
	.addrsig_sym test_int
	.addrsig_sym test_float
	.addrsig_sym test_mix
	.addrsig_sym test_va_list