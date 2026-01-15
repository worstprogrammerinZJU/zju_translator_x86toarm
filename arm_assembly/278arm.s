	.text
	.p2align	2                               // -- Begin function count_cfunctions
	.type	count_cfunctions,@function
count_cfunctions:                       // @count_cfunctions
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE_C
	ldr	x9, [x9, :lo12:CLOSURE_CREATE_C]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	count_cfunctions
	ldur	w8, [x29, #-12]
	add	w8, w8, w0
	stur	w8, [x29, #-12]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	count_cfunctions, .Lfunc_end0-count_cfunctions
                                        // -- End function
	.type	CLOSURE_CREATE_C,@object        // @CLOSURE_CREATE_C
	.bss
	.globl	CLOSURE_CREATE_C
	.p2align	3
CLOSURE_CREATE_C:
	.xword	0                               // 0x0
	.size	CLOSURE_CREATE_C, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym count_cfunctions
	.addrsig_sym CLOSURE_CREATE_C