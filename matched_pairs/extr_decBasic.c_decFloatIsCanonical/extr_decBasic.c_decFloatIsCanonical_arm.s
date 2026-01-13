	.text
	.globl	decFloatIsCanonical             // -- Begin function decFloatIsCanonical
	.p2align	2
	.type	decFloatIsCanonical,@function
decFloatIsCanonical:                    // @decFloatIsCanonical
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	DFISSPECIAL
	cbz	x0, .LBB0_12
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp]
	bl	DFISINF
	cbz	x0, .LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp]
	mov	w1, wzr
	bl	DFWORD
	adrp	x8, ECONMASK
	ldr	w8, [x8, :lo12:ECONMASK]
	and	w8, w0, w8
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_4:
	ldr	x0, [sp]
	bl	DFISCCZERO
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_6:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_7:
	ldr	x0, [sp]
	mov	w1, wzr
	bl	DFWORD
	adrp	x8, ECONNANMASK
	ldr	w8, [x8, :lo12:ECONNANMASK]
	and	w8, w0, w8
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_9:
	ldr	x0, [sp]
	bl	DFISCCZERO
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	stur	wzr, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsCanonical, .Lfunc_end0-decFloatIsCanonical
                                        // -- End function
	.type	ECONMASK,@object                // @ECONMASK
	.bss
	.globl	ECONMASK
	.p2align	2
ECONMASK:
	.word	0                               // 0x0
	.size	ECONMASK, 4
	.type	ECONNANMASK,@object             // @ECONNANMASK
	.globl	ECONNANMASK
	.p2align	2
ECONNANMASK:
	.word	0                               // 0x0
	.size	ECONNANMASK, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSPECIAL
	.addrsig_sym DFISINF
	.addrsig_sym DFWORD
	.addrsig_sym DFISCCZERO
	.addrsig_sym ECONMASK
	.addrsig_sym ECONNANMASK