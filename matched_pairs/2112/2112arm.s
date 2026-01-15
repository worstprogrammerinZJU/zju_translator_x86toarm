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
	mov	w0, #31
	stur	w0, [x29, #-4]
	mov	w8, #64
	str	w8, [sp]                        // 4-byte Folded Spill
	str	w8, [sp, #8]
	ldur	w1, [x29, #-4]
	bl	expect
	ldr	w0, [sp]                        // 4-byte Folded Reload
	str	w0, [sp, #4]
	ldr	w1, [sp, #4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"scope"
	.size	.L.str, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect