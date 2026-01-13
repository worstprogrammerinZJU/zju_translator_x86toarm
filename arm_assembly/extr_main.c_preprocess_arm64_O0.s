	.text
	.p2align	2                               // -- Begin function preprocess
	.type	preprocess,@function
preprocess:                             // @preprocess
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	read_token
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_8
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	tok2s
	mov	x1, x0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	b	.LBB0_1
.LBB0_8:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	mov	w0, wzr
	bl	exit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	preprocess, .Lfunc_end0-preprocess
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym preprocess
	.addrsig_sym read_token
	.addrsig_sym printf
	.addrsig_sym tok2s
	.addrsig_sym exit
	.addrsig_sym TEOF