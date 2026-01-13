	.text
	.p2align	2                               // -- Begin function path_intact
	.type	path_intact,@function
path_intact:                            // @path_intact
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	jv_identical
	stur	w0, [x29, #-4]
	b	.LBB0_4
.LBB0_3:
	ldr	w0, [sp, #12]
	bl	jv_free
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	path_intact, .Lfunc_end0-path_intact
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym path_intact
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_identical
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY