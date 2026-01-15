	.text
	.p2align	2                               // -- Begin function stream_check_truncation
	.type	stream_check_truncation,@function
stream_check_truncation:                // @stream_check_truncation
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	bl	jv_get_kind
	str	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	mov	w8, #1
	subs	x9, x9, #0
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.gt	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #16]
	adrp	x8, JV_KIND_NUMBER
	ldr	x10, [x8, :lo12:JV_KIND_NUMBER]
	mov	w8, #1
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.eq	.LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #16]
	adrp	x8, JV_KIND_TRUE
	ldr	x10, [x8, :lo12:JV_KIND_TRUE]
	mov	w8, #1
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.eq	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp, #16]
	adrp	x8, JV_KIND_FALSE
	ldr	x10, [x8, :lo12:JV_KIND_FALSE]
	mov	w8, #1
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	adrp	x9, JV_KIND_NULL
	ldr	x9, [x9, :lo12:JV_KIND_NULL]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stream_check_truncation, .Lfunc_end0-stream_check_truncation
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.type	JV_KIND_TRUE,@object            // @JV_KIND_TRUE
	.globl	JV_KIND_TRUE
	.p2align	3
JV_KIND_TRUE:
	.xword	0                               // 0x0
	.size	JV_KIND_TRUE, 8
	.type	JV_KIND_FALSE,@object           // @JV_KIND_FALSE
	.globl	JV_KIND_FALSE
	.p2align	3
JV_KIND_FALSE:
	.xword	0                               // 0x0
	.size	JV_KIND_FALSE, 8
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.xword	0                               // 0x0
	.size	JV_KIND_NULL, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_check_truncation
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_TRUE
	.addrsig_sym JV_KIND_FALSE
	.addrsig_sym JV_KIND_NULL