	.text
	.globl	decimal32Canonical              // -- Begin function decimal32Canonical
	.p2align	2
	.type	decimal32Canonical,@function
decimal32Canonical:                     // @decimal32Canonical
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, DEC_INIT_DECIMAL32
	ldr	w1, [x8, :lo12:DEC_INIT_DECIMAL32]
	add	x0, sp, #24
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	decContextDefault
	ldur	x0, [x29, #-16]
	sub	x1, x29, #20
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	decimal32ToNumber
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	decimal32FromNumber
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decimal32Canonical, .Lfunc_end0-decimal32Canonical
                                        // -- End function
	.type	DEC_INIT_DECIMAL32,@object      // @DEC_INIT_DECIMAL32
	.bss
	.globl	DEC_INIT_DECIMAL32
	.p2align	2
DEC_INIT_DECIMAL32:
	.word	0                               // 0x0
	.size	DEC_INIT_DECIMAL32, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decimal32ToNumber
	.addrsig_sym decimal32FromNumber
	.addrsig_sym DEC_INIT_DECIMAL32