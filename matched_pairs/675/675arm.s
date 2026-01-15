	.text
	.globl	decNumberReduce                 // -- Begin function decNumberReduce
	.p2align	2
	.type	decNumberReduce,@function
decNumberReduce:                        // @decNumberReduce
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	xzr, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNaN
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x3, [x29, #-24]
	mov	x2, xzr
	add	x4, sp, #32
	bl	decNaNs
	b	.LBB0_4
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	add	x3, sp, #28
	str	x3, [sp, #8]                    // 8-byte Folded Spill
	add	x4, sp, #32
	str	x4, [sp, #16]                   // 8-byte Folded Spill
	bl	decCopyFit
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	bl	decFinish
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-24]
	mov	w2, #1
	mov	w3, wzr
	add	x4, sp, #24
	bl	decTrim
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	ldur	x2, [x29, #-24]
	bl	decStatus
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	decNumberReduce, .Lfunc_end0-decNumberReduce
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
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNaNs
	.addrsig_sym decCopyFit
	.addrsig_sym decFinish
	.addrsig_sym decTrim
	.addrsig_sym decStatus