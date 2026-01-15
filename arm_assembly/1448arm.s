	.text
	.p2align	2                               // -- Begin function yy_init_buffer
	.type	yy_init_buffer,@function
yy_init_buffer:                         // @yy_init_buffer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	adrp	x8, errno
	ldr	w8, [x8, :lo12:errno]
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	yy_flush_buffer
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9]
	ldur	x8, [x29, #-8]
	adrp	x9, YY_CURRENT_BUFFER
	ldr	x9, [x9, :lo12:YY_CURRENT_BUFFER]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #16]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	fileno
	bl	isatty
	subs	x8, x0, #0
	cset	w8, gt
	and	w8, w8, #0x1
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	mov	w8, wzr
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldr	w8, [sp, #20]
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	yy_init_buffer, .Lfunc_end0-yy_init_buffer
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.globl	YY_CURRENT_BUFFER
	.p2align	3
YY_CURRENT_BUFFER:
	.xword	0
	.size	YY_CURRENT_BUFFER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_init_buffer
	.addrsig_sym yy_flush_buffer
	.addrsig_sym isatty
	.addrsig_sym fileno
	.addrsig_sym errno
	.addrsig_sym YY_CURRENT_BUFFER