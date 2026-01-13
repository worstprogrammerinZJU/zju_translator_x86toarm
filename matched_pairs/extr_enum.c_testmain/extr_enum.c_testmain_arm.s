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
	adrp	x8, g1
	ldr	w1, [x8, :lo12:g1]
	mov	w0, wzr
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	bl	expect
	adrp	x8, g3
	ldr	w1, [x8, :lo12:g3]
	mov	w0, #2
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	str	wzr, [sp, #8]
	mov	w0, w1
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #8]
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
	.asciz	"enum"
	.size	.L.str, 5
	.type	g1,@object                      // @g1
	.bss
	.globl	g1
	.p2align	2
g1:
	.word	0                               // 0x0
	.size	g1, 4
	.type	g3,@object                      // @g3
	.globl	g3
	.p2align	2
g3:
	.word	0                               // 0x0
	.size	g3, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym g1
	.addrsig_sym g3