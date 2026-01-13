	.text
	.p2align	2                               // -- Begin function read_u32
	.type	read_u32,@function
read_u32:                               // @read_u32
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	adrp	x8, errno
	str	xzr, [x8, :lo12:errno]
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
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	subs	w8, w8, #48
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #24]
	ldrb	w9, [x8]
	mov	w8, #57
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_6:
	ldr	x0, [sp, #24]
	mov	x1, sp
	mov	w2, #10
	bl	strtoumax
	str	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_8:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_10:
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_13
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_13:
	ldr	x8, [sp, #8]
	adrp	x9, UINT32_MAX
	ldr	x9, [x9, :lo12:UINT32_MAX]
	subs	x8, x8, x9
	b.le	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_20
.LBB0_15:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	b	.LBB0_19
.LBB0_19:
	stur	wzr, [x29, #-4]
	b	.LBB0_20
.LBB0_20:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_u32, .Lfunc_end0-read_u32
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	3
errno:
	.xword	0                               // 0x0
	.size	errno, 8
	.type	UINT32_MAX,@object              // @UINT32_MAX
	.globl	UINT32_MAX
	.p2align	3
UINT32_MAX:
	.xword	0                               // 0x0
	.size	UINT32_MAX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_u32
	.addrsig_sym strtoumax
	.addrsig_sym errno
	.addrsig_sym UINT32_MAX