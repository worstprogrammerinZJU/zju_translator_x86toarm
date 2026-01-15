	.text
	.p2align	2                               // -- Begin function f_rtrimstr
	.type	f_rtrimstr,@function
f_rtrimstr:                             // @f_rtrimstr
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-20]
	bl	jv_copy
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	jv_copy
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	f_endswith
	bl	jv_get_kind
	adrp	x8, JV_KIND_TRUE
	ldr	x8, [x8, :lo12:JV_KIND_TRUE]
	subs	x8, x0, x8
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-20]
	bl	jv_string_value
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-20]
	bl	jv_copy
	bl	jv_string_length_bytes
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldur	w0, [x29, #-24]
	bl	jv_string_length_bytes
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	mov	x9, x0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	subs	x1, x8, x9
	bl	jv_string_sized
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldur	w8, [x29, #-28]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldur	w0, [x29, #-24]
	bl	jv_free
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	f_rtrimstr, .Lfunc_end0-f_rtrimstr
                                        // -- End function
	.type	JV_KIND_TRUE,@object            // @JV_KIND_TRUE
	.bss
	.globl	JV_KIND_TRUE
	.p2align	3
JV_KIND_TRUE:
	.xword	0                               // 0x0
	.size	JV_KIND_TRUE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_rtrimstr
	.addrsig_sym jv_get_kind
	.addrsig_sym f_endswith
	.addrsig_sym jv_copy
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_TRUE