	.text
	.p2align	2                               // -- Begin function string_cmp
	.type	string_cmp,@function
string_cmp:                             // @string_cmp
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	w0, [x8]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #28]
	ldr	x8, [sp, #32]
	ldr	w0, [x8]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	w0, [sp, #24]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #24]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #20]
	ldur	x8, [x29, #-24]
	ldr	w0, [x8]
	bl	jv_string_value
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldr	x8, [sp, #32]
	ldr	w0, [x8]
	bl	jv_string_value
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	w2, [sp, #20]
	bl	memcmp
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #16]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	string_cmp, .Lfunc_end0-string_cmp
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym string_cmp
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym memcmp
	.addrsig_sym jv_string_value