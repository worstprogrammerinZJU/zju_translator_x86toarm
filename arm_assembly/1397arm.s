	.text
	.p2align	2                               // -- Begin function put_indent
	.type	put_indent,@function
put_indent:                             // @put_indent
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	str	w4, [sp, #4]
	ldur	w8, [x29, #-8]
	adrp	x9, JV_PRINT_TAB
	ldr	w9, [x9, :lo12:JV_PRINT_TAB]
	and	w8, w8, w9
	cbz	w8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w9, w8, #1
	stur	w9, [x29, #-4]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	w3, [sp, #4]
	mov	w0, #9
	bl	put_char
	b	.LBB0_2
.LBB0_4:
	b	.LBB0_9
.LBB0_5:
	ldur	w8, [x29, #-8]
	adrp	x9, JV_PRINT_SPACE0
	ldr	w9, [x9, :lo12:JV_PRINT_SPACE0]
	adrp	x10, JV_PRINT_SPACE1
	ldr	w10, [x10, :lo12:JV_PRINT_SPACE1]
	orr	w9, w9, w10
	adrp	x10, JV_PRINT_SPACE2
	ldr	w10, [x10, :lo12:JV_PRINT_SPACE2]
	orr	w9, w9, w10
	and	w8, w8, w9
	asr	w9, w8, #8
	ldur	w8, [x29, #-4]
	mul	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w9, w8, #1
	stur	w9, [x29, #-4]
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	w3, [sp, #4]
	mov	w0, #32
	bl	put_char
	b	.LBB0_6
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	put_indent, .Lfunc_end0-put_indent
                                        // -- End function
	.type	JV_PRINT_TAB,@object            // @JV_PRINT_TAB
	.bss
	.globl	JV_PRINT_TAB
	.p2align	2
JV_PRINT_TAB:
	.word	0                               // 0x0
	.size	JV_PRINT_TAB, 4
	.type	JV_PRINT_SPACE0,@object         // @JV_PRINT_SPACE0
	.globl	JV_PRINT_SPACE0
	.p2align	2
JV_PRINT_SPACE0:
	.word	0                               // 0x0
	.size	JV_PRINT_SPACE0, 4
	.type	JV_PRINT_SPACE1,@object         // @JV_PRINT_SPACE1
	.globl	JV_PRINT_SPACE1
	.p2align	2
JV_PRINT_SPACE1:
	.word	0                               // 0x0
	.size	JV_PRINT_SPACE1, 4
	.type	JV_PRINT_SPACE2,@object         // @JV_PRINT_SPACE2
	.globl	JV_PRINT_SPACE2
	.p2align	2
JV_PRINT_SPACE2:
	.word	0                               // 0x0
	.size	JV_PRINT_SPACE2, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_indent
	.addrsig_sym put_char
	.addrsig_sym JV_PRINT_TAB
	.addrsig_sym JV_PRINT_SPACE0
	.addrsig_sym JV_PRINT_SPACE1
	.addrsig_sym JV_PRINT_SPACE2