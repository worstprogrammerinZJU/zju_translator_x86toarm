	.text
	.globl	decNumberLn                     // -- Begin function decNumberLn
	.p2align	2
	.type	decNumberLn,@function
decNumberLn:                            // @decNumberLn
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	add	x2, sp, #4
	str	wzr, [sp, #4]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	decCheckMath
	cbnz	w0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	add	x3, sp, #4
	bl	decLnOp
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #4]
	ldr	x2, [sp, #8]
	bl	decStatus
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decNumberLn, .Lfunc_end0-decNumberLn
                                        // -- End function
	.type	DECUNUSED,@object               // @DECUNUSED
	.bss
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCheckMath
	.addrsig_sym decLnOp
	.addrsig_sym decStatus