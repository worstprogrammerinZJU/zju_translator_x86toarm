	.text
	.p2align	2                               // -- Begin function read_tube_name
	.type	read_tube_name,@function
read_tube_name:                         // @read_tube_name
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	subs	w8, w8, #32
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_3:
	ldr	x0, [sp, #24]
	adrp	x8, NAME_CHARS
	ldr	w1, [x8, :lo12:NAME_CHARS]
	bl	strspn
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_5:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	add	x8, x8, x9
	ldr	x9, [sp, #16]
	str	x8, [x9]
	b	.LBB0_9
.LBB0_9:
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_tube_name, .Lfunc_end0-read_tube_name
                                        // -- End function
	.type	NAME_CHARS,@object              // @NAME_CHARS
	.bss
	.globl	NAME_CHARS
	.p2align	2
NAME_CHARS:
	.word	0                               // 0x0
	.size	NAME_CHARS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_tube_name
	.addrsig_sym strspn
	.addrsig_sym NAME_CHARS