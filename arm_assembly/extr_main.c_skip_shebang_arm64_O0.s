	.text
	.p2align	2                               // -- Begin function skip_shebang
	.type	skip_shebang,@function
skip_shebang:                           // @skip_shebang
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, #2
	bl	strncmp
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_2:
	ldr	x0, [sp, #16]
	mov	w1, #10
	bl	strchr
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #35
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_5:
	ldr	x8, [sp, #8]
	add	x0, x8, #1
	mov	w1, #10
	bl	strchr
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_10
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #1]
	subs	w8, w8, #35
	b.eq	.LBB0_10
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]
	ldrb	w8, [x8, #1]
	cbz	w8, .LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]
	ldurb	w8, [x8, #-1]
	subs	w8, w8, #92
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #8]
	ldurb	w8, [x8, #-2]
	subs	w8, w8, #92
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_11:
	ldr	x8, [sp, #8]
	add	x0, x8, #1
	mov	w1, #10
	bl	strchr
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_13:
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	skip_shebang, .Lfunc_end0-skip_shebang
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#!"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_shebang
	.addrsig_sym strncmp
	.addrsig_sym strchr