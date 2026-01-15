	.text
	.p2align	2                               // -- Begin function parse_check_truncation
	.type	parse_check_truncation,@function
parse_check_truncation:                 // @parse_check_truncation
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	adrp	x9, JV_PARSE_SEQ
	ldr	w9, [x9, :lo12:JV_PARSE_SEQ]
	and	w8, w8, w9
	mov	w9, #0
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbz	w8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #28]
	mov	w9, #0
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbnz	w8, .LBB0_6
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #8]
	mov	w8, #1
	subs	x9, x9, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	b.gt	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #16]
	mov	w8, #1
	subs	x9, x9, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	b.gt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #24]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	cset	w8, eq
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parse_check_truncation, .Lfunc_end0-parse_check_truncation
                                        // -- End function
	.type	JV_PARSE_SEQ,@object            // @JV_PARSE_SEQ
	.bss
	.globl	JV_PARSE_SEQ
	.p2align	2
JV_PARSE_SEQ:
	.word	0                               // 0x0
	.size	JV_PARSE_SEQ, 4
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_check_truncation
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_PARSE_SEQ
	.addrsig_sym JV_KIND_NUMBER