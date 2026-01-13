	.text
	.p2align	2                               // -- Begin function simple
	.type	simple,@function
simple:                                 // @simple
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, ONE
	ldr	w1, [x8, :lo12:ONE]
	mov	w0, #1
	bl	expect
	adrp	x8, TWO
	ldr	w1, [x8, :lo12:TWO]
	mov	w0, #2
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	simple, .Lfunc_end0-simple
                                        // -- End function
	.type	ONE,@object                     // @ONE
	.bss
	.globl	ONE
	.p2align	2
ONE:
	.word	0                               // 0x0
	.size	ONE, 4
	.type	TWO,@object                     // @TWO
	.globl	TWO
	.p2align	2
TWO:
	.word	0                               // 0x0
	.size	TWO, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym simple
	.addrsig_sym expect
	.addrsig_sym ONE
	.addrsig_sym TWO