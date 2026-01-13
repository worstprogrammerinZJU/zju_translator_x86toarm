	.text
	.globl	decFloatXor                     // -- Begin function decFloatXor
	.p2align	2
	.type	decFloatXor,@function
decFloatXor:                            // @decFloatXor
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	ldr	x0, [sp, #24]
	bl	DFISUINT01
	cbz	w0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	DFISUINT01
	cbz	w0, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #24]
	bl	DFISCC01
	cbz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	DFISCC01
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	bl	decInvalid
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_5:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decFloatXor, .Lfunc_end0-decFloatXor
                                        // -- End function
	.type	ZEROWORD,@object                // @ZEROWORD
	.bss
	.globl	ZEROWORD
	.p2align	2
ZEROWORD:
	.word	0                               // 0x0
	.size	ZEROWORD, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISUINT01
	.addrsig_sym DFISCC01
	.addrsig_sym decInvalid