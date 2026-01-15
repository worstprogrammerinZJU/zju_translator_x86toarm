	.text
	.p2align	2                               // -- Begin function strptime
	.type	strptime,@function
strptime:                               // @strptime
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x0, [sp, #24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_6
.LBB0_2:
	ldur	x0, [x29, #-16]
	ldr	x2, [sp, #16]
	ldr	x8, [sp, #16]
	add	x3, x8, #4
	ldr	x8, [sp, #16]
	add	x4, x8, #20
	ldr	x8, [sp, #16]
	add	x5, x8, #16
	ldr	x8, [sp, #16]
	add	x6, x8, #12
	ldr	x8, [sp, #16]
	add	x7, x8, #8
	mov	x9, sp
	add	x8, sp, #8
	str	x8, [x9]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	sscanf
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #6
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #8]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #90
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	w8, w8, #1900
	str	w8, [x9]
	ldr	x9, [sp, #16]
	ldr	w8, [x9, #4]
	subs	w8, w8, #1
	str	w8, [x9, #4]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9
	add	x8, x8, #1
	stur	x8, [x29, #-8]
	b	.LBB0_6
.LBB0_5:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	strptime, .Lfunc_end0-strptime
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%Y-%m-%dT%H:%M:%SZ"
	.size	.L.str, 19
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%d-%d-%dT%d:%d:%d%n"
	.size	.L.str.1, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strptime
	.addrsig_sym strcmp
	.addrsig_sym sscanf