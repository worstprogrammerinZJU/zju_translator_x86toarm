	.text
	.p2align	2                               // -- Begin function readfull
	.type	readfull,@function
readfull:                               // @readfull
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	str	x3, [sp, #24]
	str	x4, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	ldur	x1, [x29, #-24]
	ldur	w2, [x29, #-28]
	bl	read
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	ldur	x0, [x29, #-16]
	ldr	x3, [sp, #16]
	mov	w1, wzr
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	warnpos
	ldr	x9, [sp, #24]
	mov	w8, #1
	str	w8, [x9]
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldr	w9, [sp, #12]
	mov	w8, wzr
	subs	w1, w8, w9
	ldur	w3, [x29, #-28]
	ldr	w4, [sp, #12]
	ldr	x5, [sp, #16]
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	warnpos
	ldr	x9, [sp, #24]
	mov	w8, #1
	str	w8, [x9]
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	readfull, .Lfunc_end0-readfull
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"read"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"error reading %s"
	.size	.L.str.1, 17
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"unexpected EOF reading %d bytes (got %d): %s"
	.size	.L.str.2, 45
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readfull
	.addrsig_sym read
	.addrsig_sym twarn
	.addrsig_sym warnpos