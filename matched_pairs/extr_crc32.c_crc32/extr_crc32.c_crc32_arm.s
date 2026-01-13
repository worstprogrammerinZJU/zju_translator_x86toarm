	.text
	.globl	crc32                           // -- Begin function crc32
	.p2align	2
	.type	crc32,@function
crc32:                                  // @crc32
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	wzr, [sp, #12]
	ldr	w8, [sp, #12]
	mvn	w8, w8
	str	w8, [sp, #8]
	ldr	w8, [sp, #20]
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w9, w8, #1
	str	w9, [sp, #20]
	cbz	w8, .LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	asr	w8, w8, #8
	and	w8, w8, #0xffffff
	adrp	x9, crc32tab
	ldr	x9, [x9, :lo12:crc32tab]
	ldr	w10, [sp, #8]
	ldr	x11, [sp, #24]
	ldrb	w11, [x11]
	eor	w10, w10, w11
	and	w10, w10, #0xff
	ldr	w9, [x9, w10, sxtw #2]
	eor	w8, w8, w9
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_4:
	ldr	w8, [sp, #8]
	mvn	w8, w8
	mov	w0, w8
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	crc32, .Lfunc_end0-crc32
                                        // -- End function
	.type	crc32tab,@object                // @crc32tab
	.bss
	.globl	crc32tab
	.p2align	3
crc32tab:
	.xword	0
	.size	crc32tab, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym crc32tab