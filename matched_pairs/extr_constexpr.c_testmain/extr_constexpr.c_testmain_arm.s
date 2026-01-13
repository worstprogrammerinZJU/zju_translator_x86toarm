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
	adrp	x8, p1
	ldr	x8, [x8, :lo12:p1]
	ldr	w1, [x8]
	mov	w0, #1
	bl	expect
	adrp	x8, q1
	ldr	x8, [x8, :lo12:q1]
	ldr	w1, [x8]
	mov	w0, #3
	bl	expect
	adrp	x8, p2
	ldr	x8, [x8, :lo12:p2]
	ldur	w1, [x8, #-4]
	mov	w0, #7
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	testmain, .Lfunc_end0-testmain
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"constexpr"
	.size	.L.str, 10
	.type	p1,@object                      // @p1
	.bss
	.globl	p1
	.p2align	3
p1:
	.xword	0
	.size	p1, 8
	.type	q1,@object                      // @q1
	.globl	q1
	.p2align	3
q1:
	.xword	0
	.size	q1, 8
	.type	p2,@object                      // @p2
	.globl	p2
	.p2align	3
p2:
	.xword	0
	.size	p2, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym p1
	.addrsig_sym q1
	.addrsig_sym p2