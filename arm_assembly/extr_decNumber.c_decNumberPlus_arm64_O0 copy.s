	.text
	.globl	decNumberPlus                   // -- Begin function decNumberPlus
	.p2align	2
	.type	decNumberPlus,@function
decNumberPlus:                          // @decNumberPlus
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	add	x8, sp, #24
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	xzr, [sp, #24]
	sub	x0, x29, #28
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	decNumberZero
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x5, [sp, #16]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-16]
	ldur	x3, [x29, #-24]
	mov	w4, wzr
	bl	decAddOp
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	ldur	x2, [x29, #-24]
	bl	decStatus
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	decNumberPlus, .Lfunc_end0-decNumberPlus
                                        // -- End function
	.type	DECUNUSED,@object               // @DECUNUSED
	.bss
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberZero
	.addrsig_sym decAddOp
	.addrsig_sym decStatus