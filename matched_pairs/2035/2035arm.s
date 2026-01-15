	.text
	.p2align	2                               // -- Begin function epollq_add
	.type	epollq_add,@function
epollq_add:                             // @epollq_add
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldrb	w8, [sp, #7]
	ldr	x9, [sp, #8]
	strb	w8, [x9]
	ldr	x0, [sp, #8]
	bl	connsched
	adrp	x9, epollq
	ldr	x8, [x9, :lo12:epollq]
	ldr	x10, [sp, #8]
	str	x8, [x10, #8]
	ldr	x8, [sp, #8]
	str	x8, [x9, :lo12:epollq]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	epollq_add, .Lfunc_end0-epollq_add
                                        // -- End function
	.type	epollq,@object                  // @epollq
	.bss
	.globl	epollq
	.p2align	3
epollq:
	.xword	0
	.size	epollq, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epollq_add
	.addrsig_sym connsched
	.addrsig_sym epollq