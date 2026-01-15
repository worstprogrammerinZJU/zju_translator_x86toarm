	.text
	.p2align	2                               // -- Begin function parser_reset
	.type	parser_reset,@function
parser_reset:                           // @parser_reset
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	adrp	x9, JV_PARSE_STREAMING
	ldr	w9, [x9, :lo12:JV_PARSE_STREAMING]
	and	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #64]
	bl	jv_free
	bl	jv_array
	ldr	x8, [sp, #8]
	str	x0, [x8, #64]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #56]
	b	.LBB0_2
.LBB0_2:
	adrp	x8, JV_LAST_NONE
	ldr	w8, [x8, :lo12:JV_LAST_NONE]
	ldr	x9, [sp, #8]
	str	w8, [x9, #48]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	bl	jv_free
	bl	jv_invalid
	ldr	x8, [sp, #8]
	str	x0, [x8, #40]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	bl	jv_free
	bl	jv_invalid
	ldr	x8, [sp, #8]
	str	x0, [x8, #32]
	str	wzr, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	bl	jv_free
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_6:
	ldr	x8, [sp, #8]
	str	wzr, [x8, #4]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	adrp	x8, JV_PARSER_NORMAL
	ldr	w8, [x8, :lo12:JV_PARSER_NORMAL]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parser_reset, .Lfunc_end0-parser_reset
                                        // -- End function
	.type	JV_PARSE_STREAMING,@object      // @JV_PARSE_STREAMING
	.bss
	.globl	JV_PARSE_STREAMING
	.p2align	2
JV_PARSE_STREAMING:
	.word	0                               // 0x0
	.size	JV_PARSE_STREAMING, 4
	.type	JV_LAST_NONE,@object            // @JV_LAST_NONE
	.globl	JV_LAST_NONE
	.p2align	2
JV_LAST_NONE:
	.word	0                               // 0x0
	.size	JV_LAST_NONE, 4
	.type	JV_PARSER_NORMAL,@object        // @JV_PARSER_NORMAL
	.globl	JV_PARSER_NORMAL
	.p2align	2
JV_PARSER_NORMAL:
	.word	0                               // 0x0
	.size	JV_PARSER_NORMAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_array
	.addrsig_sym jv_invalid
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_LAST_NONE
	.addrsig_sym JV_PARSER_NORMAL