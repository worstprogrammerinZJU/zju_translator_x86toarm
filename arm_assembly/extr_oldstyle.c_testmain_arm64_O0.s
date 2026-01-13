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
	bl	no_declaration
	mov	w1, w0
	mov	w0, #3
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	mov	w1, #4
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	oldstyle1
	mov	w1, w0
	mov	w0, #7
	bl	expect
	bl	oldstyle2
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	expect
	mov	w0, #5
	stur	w0, [x29, #-4]                  // 4-byte Folded Spill
	bl	oldstyle3
	mov	w1, w0
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	bl	expect
	ldur	w0, [x29, #-4]                  // 4-byte Folded Reload
	fmov	d0, #4.00000000
	bl	oldstyle4
	mov	w1, w0
	mov	w0, #9
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
	.asciz	"K&R"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym no_declaration
	.addrsig_sym oldstyle1
	.addrsig_sym oldstyle2
	.addrsig_sym oldstyle3
	.addrsig_sym oldstyle4