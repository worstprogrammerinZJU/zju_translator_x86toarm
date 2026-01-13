	.text
	.p2align	2                               // -- Begin function parser_init
	.type	parser_init,@function
parser_init:                            // @parser_init
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	adrp	x9, JV_PARSE_STREAMING
	ldr	w9, [x9, :lo12:JV_PARSE_STREAMING]
	and	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	jv_array
	ldr	x8, [sp, #8]
	str	x0, [x8, #160]
	b	.LBB0_3
.LBB0_2:
	bl	jv_invalid
	ldr	x8, [sp, #8]
	str	x0, [x8, #160]
	adrp	x8, JV_PARSE_STREAM_ERRORS
	ldr	w10, [x8, :lo12:JV_PARSE_STREAM_ERRORS]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	str	xzr, [x8, #152]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #136]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #144]
	adrp	x8, JV_LAST_NONE
	ldr	w8, [x8, :lo12:JV_LAST_NONE]
	ldr	x9, [sp, #8]
	str	w8, [x9, #128]
	bl	jv_invalid
	ldr	x8, [sp, #8]
	str	x0, [x8, #120]
	bl	jv_invalid
	ldr	x8, [sp, #8]
	str	x0, [x8, #112]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #104]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #88]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #96]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	adrp	x9, JV_PARSE_SEQ
	ldr	w9, [x9, :lo12:JV_PARSE_SEQ]
	and	w8, w8, w9
	cbz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, JV_PARSER_WAITING_FOR_RS
	ldr	w8, [x8, :lo12:JV_PARSER_WAITING_FOR_RS]
	ldr	x9, [sp, #8]
	str	w8, [x9, #80]
	b	.LBB0_6
.LBB0_5:
	adrp	x8, JV_PARSER_NORMAL
	ldr	w8, [x8, :lo12:JV_PARSER_NORMAL]
	ldr	x9, [sp, #8]
	str	w8, [x9, #80]
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #8]
	str	xzr, [x8, #72]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #64]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #40]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #48]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #56]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #32]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #24]
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9, #4]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	bl	jvp_dtoa_context_init
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parser_init, .Lfunc_end0-parser_init
                                        // -- End function
	.type	JV_PARSE_STREAMING,@object      // @JV_PARSE_STREAMING
	.bss
	.globl	JV_PARSE_STREAMING
	.p2align	2
JV_PARSE_STREAMING:
	.word	0                               // 0x0
	.size	JV_PARSE_STREAMING, 4
	.type	JV_PARSE_STREAM_ERRORS,@object  // @JV_PARSE_STREAM_ERRORS
	.globl	JV_PARSE_STREAM_ERRORS
	.p2align	2
JV_PARSE_STREAM_ERRORS:
	.word	0                               // 0x0
	.size	JV_PARSE_STREAM_ERRORS, 4
	.type	JV_LAST_NONE,@object            // @JV_LAST_NONE
	.globl	JV_LAST_NONE
	.p2align	2
JV_LAST_NONE:
	.word	0                               // 0x0
	.size	JV_LAST_NONE, 4
	.type	JV_PARSE_SEQ,@object            // @JV_PARSE_SEQ
	.globl	JV_PARSE_SEQ
	.p2align	2
JV_PARSE_SEQ:
	.word	0                               // 0x0
	.size	JV_PARSE_SEQ, 4
	.type	JV_PARSER_WAITING_FOR_RS,@object // @JV_PARSER_WAITING_FOR_RS
	.globl	JV_PARSER_WAITING_FOR_RS
	.p2align	2
JV_PARSER_WAITING_FOR_RS:
	.word	0                               // 0x0
	.size	JV_PARSER_WAITING_FOR_RS, 4
	.type	JV_PARSER_NORMAL,@object        // @JV_PARSER_NORMAL
	.globl	JV_PARSER_NORMAL
	.p2align	2
JV_PARSER_NORMAL:
	.word	0                               // 0x0
	.size	JV_PARSER_NORMAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parser_init
	.addrsig_sym jv_array
	.addrsig_sym jv_invalid
	.addrsig_sym jvp_dtoa_context_init
	.addrsig_sym JV_PARSE_STREAMING
	.addrsig_sym JV_PARSE_STREAM_ERRORS
	.addrsig_sym JV_LAST_NONE
	.addrsig_sym JV_PARSE_SEQ
	.addrsig_sym JV_PARSER_WAITING_FOR_RS
	.addrsig_sym JV_PARSER_NORMAL