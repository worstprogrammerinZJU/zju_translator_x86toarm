	.text
	.p2align	2                               // -- Begin function read_rectype_fields
	.type	read_rectype_fields,@function
read_rectype_fields:                    // @read_rectype_fields
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	mov	w0, #123
	bl	next_token
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	bl	read_rectype_fields_sub
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	fix_rectype_flexible_member
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	bl	update_struct_offset
	stur	x0, [x29, #-8]
	b	.LBB0_5
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #8]
	bl	update_union_offset
	stur	x0, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_rectype_fields, .Lfunc_end0-read_rectype_fields
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_fields
	.addrsig_sym next_token
	.addrsig_sym read_rectype_fields_sub
	.addrsig_sym fix_rectype_flexible_member
	.addrsig_sym update_struct_offset
	.addrsig_sym update_union_offset