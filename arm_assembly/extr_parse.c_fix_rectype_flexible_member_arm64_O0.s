	.text
	.p2align	2                               // -- Begin function fix_rectype_flexible_member
	.type	fix_rectype_flexible_member,@function
fix_rectype_flexible_member:            // @fix_rectype_flexible_member
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	vec_get
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	adds	w8, w8, #1
	b.ne	.LBB0_10
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w9, w0, #1
	subs	w8, w8, w9
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	ty2s
	mov	w1, w0
	ldr	x2, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	vec_len
	subs	w8, w0, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	ty2s
	mov	w1, w0
	ldr	x2, [sp, #16]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	str	wzr, [x8, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	fix_rectype_flexible_member, .Lfunc_end0-fix_rectype_flexible_member
                                        // -- End function
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.bss
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.xword	0                               // 0x0
	.size	KIND_ARRAY, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"flexible member may only appear as the last member: %s %s"
	.size	.L.str, 58
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"flexible member with no other fields: %s %s"
	.size	.L.str.1, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fix_rectype_flexible_member
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym KIND_ARRAY