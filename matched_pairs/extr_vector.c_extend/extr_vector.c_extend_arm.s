	.text
	.p2align	2                               // -- Begin function extend
	.type	extend,@function
extend:                                 // @extend
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	w9, [x29, #-12]
	add	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_3
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldur	w9, [x29, #-12]
	add	w0, w8, w9
	bl	roundup
	adrp	x8, MIN_SIZE
	ldr	w1, [x8, :lo12:MIN_SIZE]
	bl	max
	str	w0, [sp, #16]
	ldrsw	x9, [sp, #16]
	mov	x8, #8
	str	x8, [sp]                        // 8-byte Folded Spill
	mul	x8, x8, x9
	mov	w0, w8
	bl	malloc
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	x1, [x9, #8]
	ldur	x9, [x29, #-8]
	ldrsw	x9, [x9]
	mul	x8, x8, x9
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #8]
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	extend, .Lfunc_end0-extend
                                        // -- End function
	.type	MIN_SIZE,@object                // @MIN_SIZE
	.bss
	.globl	MIN_SIZE
	.p2align	2
MIN_SIZE:
	.word	0                               // 0x0
	.size	MIN_SIZE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym extend
	.addrsig_sym max
	.addrsig_sym roundup
	.addrsig_sym malloc
	.addrsig_sym memcpy
	.addrsig_sym MIN_SIZE