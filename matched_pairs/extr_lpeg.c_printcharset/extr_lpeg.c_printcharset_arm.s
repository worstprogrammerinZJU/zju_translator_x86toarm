	.text
	.p2align	2                               // -- Begin function printcharset
	.type	printcharset,@function
printcharset:                           // @printcharset
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #8]
	adrp	x9, UCHAR_MAX
	ldr	w9, [x9, :lo12:UCHAR_MAX]
	subs	w8, w8, w9
	b.gt	.LBB0_14
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	testchar
	mov	w8, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]
	adrp	x9, UCHAR_MAX
	ldr	w9, [x9, :lo12:UCHAR_MAX]
	subs	w8, w8, w9
	cset	w8, le
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp]                        // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_12
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	b.le	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #4]
	ldr	w8, [sp, #8]
	subs	w2, w8, #1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_14:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	printcharset, .Lfunc_end0-printcharset
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"["
	.size	.L.str, 2
	.type	UCHAR_MAX,@object               // @UCHAR_MAX
	.bss
	.globl	UCHAR_MAX
	.p2align	2
UCHAR_MAX:
	.word	0                               // 0x0
	.size	UCHAR_MAX, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"(%02x)"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"(%02x-%02x)"
	.size	.L.str.2, 12
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"]"
	.size	.L.str.3, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printcharset
	.addrsig_sym printf
	.addrsig_sym testchar
	.addrsig_sym UCHAR_MAX