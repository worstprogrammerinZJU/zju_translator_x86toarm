	.text
	.globl	fill_truth_captcha              // -- Begin function fill_truth_captcha
	.p2align	2
	.type	fill_truth_captcha,@function
fill_truth_captcha:                     // @fill_truth_captcha
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	mov	w1, #47
	bl	strrchr
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	strlen
	ldr	w9, [sp]                        // 4-byte Folded Reload
	mov	w8, #0
	subs	w9, w9, w0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-12]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w8, [x8, x9]
	subs	w8, w8, #46
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w0, [x8, x9]
	bl	alphanum_to_int
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #35
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrb	w1, [x8, x9]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #12]
	adrp	x10, NUMCHARS
	ldr	w10, [x10, :lo12:NUMCHARS]
	mul	w9, w9, w10
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	fmov	s0, #1.00000000
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_9:
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #12]
	adrp	x10, NUMCHARS
	ldr	w11, [x10, :lo12:NUMCHARS]
	mul	w9, w9, w11
	ldr	w10, [x10, :lo12:NUMCHARS]
	add	w9, w9, w10
	subs	w9, w9, #1
	fmov	s0, #1.00000000
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_10
.LBB0_13:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	fill_truth_captcha, .Lfunc_end0-fill_truth_captcha
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bad %c\n"
	.size	.L.str, 8
	.type	NUMCHARS,@object                // @NUMCHARS
	.bss
	.globl	NUMCHARS
	.p2align	2
NUMCHARS:
	.word	0                               // 0x0
	.size	NUMCHARS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strrchr
	.addrsig_sym strlen
	.addrsig_sym alphanum_to_int
	.addrsig_sym printf
	.addrsig_sym NUMCHARS