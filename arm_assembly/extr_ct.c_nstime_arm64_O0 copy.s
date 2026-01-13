	.text
	.p2align	2                               // -- Begin function nstime
	.type	nstime,@function
nstime:                                 // @nstime
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, CLOCK_MONOTONIC
	ldr	w0, [x8, :lo12:CLOCK_MONOTONIC]
	mov	x1, sp
	bl	clock_gettime
	ldr	x8, [sp, #8]
                                        // kill: def $w8 killed $w8 killed $x8
	adrp	x9, Second
	ldr	w9, [x9, :lo12:Second]
	mul	w8, w8, w9
	ldr	w9, [sp]
	add	w0, w8, w9
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	nstime, .Lfunc_end0-nstime
                                        // -- End function
	.type	CLOCK_MONOTONIC,@object         // @CLOCK_MONOTONIC
	.bss
	.globl	CLOCK_MONOTONIC
	.p2align	2
CLOCK_MONOTONIC:
	.word	0                               // 0x0
	.size	CLOCK_MONOTONIC, 4
	.type	Second,@object                  // @Second
	.globl	Second
	.p2align	2
Second:
	.word	0                               // 0x0
	.size	Second, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nstime
	.addrsig_sym clock_gettime
	.addrsig_sym CLOCK_MONOTONIC
	.addrsig_sym Second