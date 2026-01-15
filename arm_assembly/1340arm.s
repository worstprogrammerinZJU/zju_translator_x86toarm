	.text
	.p2align	2                               // -- Begin function Balloc
	.type	Balloc,@function
Balloc:                                 // @Balloc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w8, [x29, #-12]
	adrp	x9, Kmax
	ldr	w9, [x9, :lo12:Kmax]
	subs	w8, w8, w9
	b.gt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldursw	x9, [x29, #-12]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	ldursw	x10, [x29, #-12]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_4
.LBB0_3:
	ldur	w9, [x29, #-12]
	mov	w8, #1
	lsl	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w9, w8, #1
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	add	x8, x8, #32
	mov	w0, w8
	bl	MALLOC
	str	x0, [sp, #8]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	Balloc, .Lfunc_end0-Balloc
                                        // -- End function
	.type	Kmax,@object                    // @Kmax
	.bss
	.globl	Kmax
	.p2align	2
Kmax:
	.word	0                               // 0x0
	.size	Kmax, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Balloc
	.addrsig_sym MALLOC
	.addrsig_sym Kmax