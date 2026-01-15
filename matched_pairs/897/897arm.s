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
	adrp	x8, externvar1
	ldr	w1, [x8, :lo12:externvar1]
	mov	w0, #98
	bl	expect
	adrp	x8, externvar2
	ldr	w1, [x8, :lo12:externvar2]
	mov	w0, #99
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"extern"
	.size	.L.str, 7
	.type	externvar1,@object              // @externvar1
	.bss
	.globl	externvar1
	.p2align	2
externvar1:
	.word	0                               // 0x0
	.size	externvar1, 4
	.type	externvar2,@object              // @externvar2
	.globl	externvar2
	.p2align	2
externvar2:
	.word	0                               // 0x0
	.size	externvar2, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym externvar1
	.addrsig_sym externvar2