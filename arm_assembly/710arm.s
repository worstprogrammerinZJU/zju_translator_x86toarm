	.text
	.globl	decimal64Canonical              // -- Begin function decimal64Canonical
	.p2align	2
	.type	decimal64Canonical,@function
decimal64Canonical:                     // @decimal64Canonical
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	adrp	x8, DEC_INIT_DECIMAL64
	ldr	w1, [x8, :lo12:DEC_INIT_DECIMAL64]
	add	x0, sp, #24
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	decContextDefault
	ldur	x0, [x29, #-16]
	sub	x1, x29, #20
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	decimal64ToNumber
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	decimal64FromNumber
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decimal64Canonical, .Lfunc_end0-decimal64Canonical
                                        // -- End function
	.type	DEC_INIT_DECIMAL64,@object      // @DEC_INIT_DECIMAL64
	.bss
	.globl	DEC_INIT_DECIMAL64
	.p2align	2
DEC_INIT_DECIMAL64:
	.word	0                               // 0x0
	.size	DEC_INIT_DECIMAL64, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decimal64ToNumber
	.addrsig_sym decimal64FromNumber
	.addrsig_sym DEC_INIT_DECIMAL64