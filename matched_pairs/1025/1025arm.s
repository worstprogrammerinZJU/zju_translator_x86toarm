	.text
	.p2align	2                               // -- Begin function emit_zero_filler
	.type	emit_zero_filler,@function
emit_zero_filler:                       // @emit_zero_filler
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	subs	w9, w9, #4
	subs	w8, w8, w9
	b.gt	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #4
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w1, [x29, #-4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_zero_filler, .Lfunc_end0-emit_zero_filler
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movl $0, %d(#rbp)"
	.size	.L.str, 18
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"movb $0, %d(#rbp)"
	.size	.L.str.1, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_zero_filler
	.addrsig_sym emit
	.addrsig_sym SAVE