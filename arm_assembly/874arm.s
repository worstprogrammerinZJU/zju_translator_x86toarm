	.text
	.p2align	2                               // -- Begin function jq_reset
	.type	jq_reset,@function
jq_reset:                               // @jq_reset
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x0, [sp, #8]
	bl	stack_restore
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	add	x0, x8, #80
	bl	stack_reset
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #72]
	bl	jv_free
	bl	jv_null
	ldr	x8, [sp, #8]
	str	x0, [x8, #72]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #64]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #56]
	bl	jv_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #48]
	bl	jv_free
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	bl	jv_get_kind
	adrp	x8, JV_KIND_INVALID
	ldr	x8, [x8, :lo12:JV_KIND_INVALID]
	subs	x8, x0, x8
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	bl	jv_free
	b	.LBB0_5
.LBB0_5:
	bl	jv_null
	ldr	x8, [sp, #8]
	str	x0, [x8, #40]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	bl	jv_free
	bl	jv_null
	ldr	x8, [sp, #8]
	str	x0, [x8, #32]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #24]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_reset, .Lfunc_end0-jq_reset
                                        // -- End function
	.type	JV_KIND_INVALID,@object         // @JV_KIND_INVALID
	.bss
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.xword	0                               // 0x0
	.size	JV_KIND_INVALID, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_reset
	.addrsig_sym stack_restore
	.addrsig_sym assert
	.addrsig_sym stack_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_null
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_INVALID