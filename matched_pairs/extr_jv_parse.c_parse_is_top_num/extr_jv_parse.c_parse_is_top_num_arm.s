	.text
	.p2align	2                               // -- Begin function parse_is_top_num
	.type	parse_is_top_num,@function
parse_is_top_num:                       // @parse_is_top_num
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	mov	w9, #0
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x8, [x8, :lo12:JV_KIND_NUMBER]
	subs	x8, x0, x8
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parse_is_top_num, .Lfunc_end0-parse_is_top_num
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_is_top_num
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_NUMBER