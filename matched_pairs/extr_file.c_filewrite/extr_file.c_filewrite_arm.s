	.text
	.p2align	2                               // -- Begin function filewrite
	.type	filewrite,@function
filewrite:                              // @filewrite
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	w3, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #16]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	write
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w10, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [x8, #8]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #8]
	ldur	x9, [x29, #-16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #4]
	add	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	x9, [x8, #8]
	ldr	w8, [x9, #4]
	add	w8, w8, w10
	str	w8, [x9, #4]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	filewrite, .Lfunc_end0-filewrite
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"write"
	.size	.L.str, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym filewrite
	.addrsig_sym write
	.addrsig_sym twarn