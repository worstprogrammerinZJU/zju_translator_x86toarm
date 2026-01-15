	.text
	.globl	decimal128FromString            // -- Begin function decimal128FromString
	.p2align	2
	.type	decimal128FromString,@function
decimal128FromString:                   // @decimal128FromString
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	adrp	x8, DEC_INIT_DECIMAL128
	ldr	w1, [x8, :lo12:DEC_INIT_DECIMAL128]
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decContextDefault
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	str	w8, [sp, #32]
	ldur	x1, [x29, #-16]
	add	x0, sp, #20
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	decNumberFromString
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	bl	decimal128FromNumber
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #24]
	bl	decContextSetStatus
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	decimal128FromString, .Lfunc_end0-decimal128FromString
                                        // -- End function
	.type	DEC_INIT_DECIMAL128,@object     // @DEC_INIT_DECIMAL128
	.bss
	.globl	DEC_INIT_DECIMAL128
	.p2align	2
DEC_INIT_DECIMAL128:
	.word	0                               // 0x0
	.size	DEC_INIT_DECIMAL128, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decContextDefault
	.addrsig_sym decNumberFromString
	.addrsig_sym decimal128FromNumber
	.addrsig_sym decContextSetStatus
	.addrsig_sym DEC_INIT_DECIMAL128